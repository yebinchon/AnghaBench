
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owl_i2c_dev {int msg_ptr; scalar_t__ err; scalar_t__ base; int lock; int msg_complete; struct i2c_msg* msg; } ;
struct i2c_msg {int len; unsigned int* buf; int flags; } ;
struct i2c_adapter {int dev; int timeout; } ;


 int EAGAIN ;
 int ETIMEDOUT ;
 int I2C_M_IGNORE_NAK ;
 int I2C_M_RD ;
 unsigned int OWL_I2C_CMD_AS (int) ;
 unsigned int OWL_I2C_CMD_DE ;
 unsigned int OWL_I2C_CMD_MSS ;
 unsigned int OWL_I2C_CMD_NS ;
 unsigned int OWL_I2C_CMD_RBE ;
 unsigned int OWL_I2C_CMD_SAS (int) ;
 unsigned int OWL_I2C_CMD_SBE ;
 unsigned int OWL_I2C_CMD_SE ;
 unsigned int OWL_I2C_CMD_SECL ;
 int OWL_I2C_CTL_EN ;
 int OWL_I2C_CTL_GBCC_STOP ;
 int OWL_I2C_CTL_IRQE ;
 int OWL_I2C_CTL_RB ;
 int OWL_I2C_FIFOCTL_NIB ;
 int OWL_I2C_FIFOSTAT_TFF ;
 scalar_t__ OWL_I2C_REG_CMD ;
 scalar_t__ OWL_I2C_REG_CTL ;
 scalar_t__ OWL_I2C_REG_DATCNT ;
 scalar_t__ OWL_I2C_REG_FIFOCTL ;
 scalar_t__ OWL_I2C_REG_FIFOSTAT ;
 scalar_t__ OWL_I2C_REG_STAT ;
 scalar_t__ OWL_I2C_REG_TXDAT ;
 unsigned int OWL_I2C_STAT_LAB ;
 int dev_err (int *,char*) ;
 unsigned int i2c_8bit_addr_from_msg (struct i2c_msg*) ;
 struct owl_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 int owl_i2c_check_bus_busy (struct i2c_adapter*) ;
 int owl_i2c_reset (struct owl_i2c_dev*) ;
 int owl_i2c_reset_fifo (struct owl_i2c_dev*) ;
 int owl_i2c_set_freq (struct owl_i2c_dev*) ;
 int owl_i2c_update_reg (scalar_t__,int,int) ;
 int readl (scalar_t__) ;
 int reinit_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int owl_i2c_master_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
          int num)
{
 struct owl_i2c_dev *i2c_dev = i2c_get_adapdata(adap);
 struct i2c_msg *msg;
 unsigned long time_left, flags;
 unsigned int i2c_cmd, val;
 unsigned int addr;
 int ret, idx;

 spin_lock_irqsave(&i2c_dev->lock, flags);


 owl_i2c_reset(i2c_dev);


 owl_i2c_set_freq(i2c_dev);





 spin_unlock_irqrestore(&i2c_dev->lock, flags);


 ret = owl_i2c_reset_fifo(i2c_dev);
 if (ret)
  goto unlocked_err_exit;


 ret = owl_i2c_check_bus_busy(adap);
 if (ret)
  goto unlocked_err_exit;

 spin_lock_irqsave(&i2c_dev->lock, flags);


 val = readl(i2c_dev->base + OWL_I2C_REG_STAT);
 if (val & OWL_I2C_STAT_LAB) {
  val &= ~OWL_I2C_STAT_LAB;
  writel(val, i2c_dev->base + OWL_I2C_REG_STAT);
  ret = -EAGAIN;
  goto err_exit;
 }

 reinit_completion(&i2c_dev->msg_complete);


 owl_i2c_update_reg(i2c_dev->base + OWL_I2C_REG_CTL,
      OWL_I2C_CTL_IRQE, 1);





 i2c_cmd = OWL_I2C_CMD_SECL | OWL_I2C_CMD_MSS | OWL_I2C_CMD_SE |
    OWL_I2C_CMD_NS | OWL_I2C_CMD_DE | OWL_I2C_CMD_SBE;


 if (num > 1) {

  i2c_cmd |= OWL_I2C_CMD_AS(msgs[0].len + 1) |
      OWL_I2C_CMD_SAS(1) | OWL_I2C_CMD_RBE;


  addr = i2c_8bit_addr_from_msg(&msgs[0]);
  writel(addr, i2c_dev->base + OWL_I2C_REG_TXDAT);


  for (idx = 0; idx < msgs[0].len; idx++)
   writel(msgs[0].buf[idx],
          i2c_dev->base + OWL_I2C_REG_TXDAT);

  msg = &msgs[1];
 } else {

  i2c_cmd |= OWL_I2C_CMD_AS(1);
  msg = &msgs[0];
 }

 i2c_dev->msg = msg;
 i2c_dev->msg_ptr = 0;


 writel(msg->len, i2c_dev->base + OWL_I2C_REG_DATCNT);

 addr = i2c_8bit_addr_from_msg(msg);
 writel(addr, i2c_dev->base + OWL_I2C_REG_TXDAT);

 if (!(msg->flags & I2C_M_RD)) {

  for (idx = 0; idx < msg->len; idx++) {

   if (readl(i2c_dev->base + OWL_I2C_REG_FIFOSTAT) &
       OWL_I2C_FIFOSTAT_TFF)
    break;

   writel(msg->buf[idx],
          i2c_dev->base + OWL_I2C_REG_TXDAT);
  }

  i2c_dev->msg_ptr = idx;
 }


 if (msg->flags & I2C_M_IGNORE_NAK)
  owl_i2c_update_reg(i2c_dev->base + OWL_I2C_REG_FIFOCTL,
       OWL_I2C_FIFOCTL_NIB, 1);
 else
  owl_i2c_update_reg(i2c_dev->base + OWL_I2C_REG_FIFOCTL,
       OWL_I2C_FIFOCTL_NIB, 0);


 writel(i2c_cmd, i2c_dev->base + OWL_I2C_REG_CMD);

 spin_unlock_irqrestore(&i2c_dev->lock, flags);

 time_left = wait_for_completion_timeout(&i2c_dev->msg_complete,
      adap->timeout);

 spin_lock_irqsave(&i2c_dev->lock, flags);
 if (time_left == 0) {
  dev_err(&adap->dev, "Transaction timed out\n");

  owl_i2c_update_reg(i2c_dev->base + OWL_I2C_REG_CTL,
       OWL_I2C_CTL_GBCC_STOP | OWL_I2C_CTL_RB,
       1);
  ret = -ETIMEDOUT;
  goto err_exit;
 }

 ret = i2c_dev->err < 0 ? i2c_dev->err : num;

err_exit:
 spin_unlock_irqrestore(&i2c_dev->lock, flags);

unlocked_err_exit:

 owl_i2c_update_reg(i2c_dev->base + OWL_I2C_REG_CTL,
      OWL_I2C_CTL_EN, 0);

 return ret;
}
