
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct omap_i2c_dev {int receiver; int buf_len; int cmd_err; int speed; int dev; int cmd_complete; scalar_t__ b_hw; int buf; } ;
struct i2c_msg {int addr; int len; int flags; int buf; } ;
struct i2c_adapter {int dummy; } ;


 int EAGAIN ;
 int EIO ;
 int EREMOTEIO ;
 int ETIMEDOUT ;
 int I2C_M_IGNORE_NAK ;
 int I2C_M_RD ;
 int I2C_M_STOP ;
 int I2C_M_TEN ;
 int OMAP_I2C_BUF_REG ;
 int OMAP_I2C_BUF_RXFIF_CLR ;
 int OMAP_I2C_BUF_TXFIF_CLR ;
 int OMAP_I2C_CNT_REG ;
 int OMAP_I2C_CON_EN ;
 int OMAP_I2C_CON_MST ;
 int OMAP_I2C_CON_OPMODE_HS ;
 int OMAP_I2C_CON_REG ;
 int OMAP_I2C_CON_STP ;
 int OMAP_I2C_CON_STT ;
 int OMAP_I2C_CON_TRX ;
 int OMAP_I2C_CON_XA ;
 int OMAP_I2C_SA_REG ;
 int OMAP_I2C_STAT_AL ;
 int OMAP_I2C_STAT_NACK ;
 int OMAP_I2C_STAT_ROVR ;
 int OMAP_I2C_STAT_XUDF ;
 unsigned long OMAP_I2C_TIMEOUT ;
 int __omap_i2c_init (struct omap_i2c_dev*) ;
 int barrier () ;
 int cpu_relax () ;
 int dev_dbg (int ,char*,int,int,int,int) ;
 int dev_err (int ,char*) ;
 struct omap_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 unsigned long jiffies ;
 scalar_t__ likely (int) ;
 int omap_i2c_read_reg (struct omap_i2c_dev*,int ) ;
 int omap_i2c_reset (struct omap_i2c_dev*) ;
 int omap_i2c_resize_fifo (struct omap_i2c_dev*,int,int) ;
 int omap_i2c_wait (struct omap_i2c_dev*) ;
 int omap_i2c_write_reg (struct omap_i2c_dev*,int ,int) ;
 int omap_i2c_xfer_data (struct omap_i2c_dev*) ;
 int reinit_completion (int *) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 unsigned long wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static int omap_i2c_xfer_msg(struct i2c_adapter *adap,
        struct i2c_msg *msg, int stop, bool polling)
{
 struct omap_i2c_dev *omap = i2c_get_adapdata(adap);
 unsigned long timeout;
 u16 w;
 int ret;

 dev_dbg(omap->dev, "addr: 0x%04x, len: %d, flags: 0x%x, stop: %d\n",
  msg->addr, msg->len, msg->flags, stop);

 omap->receiver = !!(msg->flags & I2C_M_RD);
 omap_i2c_resize_fifo(omap, msg->len, omap->receiver);

 omap_i2c_write_reg(omap, OMAP_I2C_SA_REG, msg->addr);


 omap->buf = msg->buf;
 omap->buf_len = msg->len;


 barrier();

 omap_i2c_write_reg(omap, OMAP_I2C_CNT_REG, omap->buf_len);


 w = omap_i2c_read_reg(omap, OMAP_I2C_BUF_REG);
 w |= OMAP_I2C_BUF_RXFIF_CLR | OMAP_I2C_BUF_TXFIF_CLR;
 omap_i2c_write_reg(omap, OMAP_I2C_BUF_REG, w);

 if (!polling)
  reinit_completion(&omap->cmd_complete);
 omap->cmd_err = 0;

 w = OMAP_I2C_CON_EN | OMAP_I2C_CON_MST | OMAP_I2C_CON_STT;


 if (omap->speed > 400)
  w |= OMAP_I2C_CON_OPMODE_HS;

 if (msg->flags & I2C_M_STOP)
  stop = 1;
 if (msg->flags & I2C_M_TEN)
  w |= OMAP_I2C_CON_XA;
 if (!(msg->flags & I2C_M_RD))
  w |= OMAP_I2C_CON_TRX;

 if (!omap->b_hw && stop)
  w |= OMAP_I2C_CON_STP;





 omap_i2c_write_reg(omap, OMAP_I2C_CON_REG, w);




 if (omap->b_hw && stop) {
  unsigned long delay = jiffies + OMAP_I2C_TIMEOUT;
  u16 con = omap_i2c_read_reg(omap, OMAP_I2C_CON_REG);
  while (con & OMAP_I2C_CON_STT) {
   con = omap_i2c_read_reg(omap, OMAP_I2C_CON_REG);


   if (time_after(jiffies, delay)) {
    dev_err(omap->dev, "controller timed out "
    "waiting for start condition to finish\n");
    return -ETIMEDOUT;
   }
   cpu_relax();
  }

  w |= OMAP_I2C_CON_STP;
  w &= ~OMAP_I2C_CON_STT;
  omap_i2c_write_reg(omap, OMAP_I2C_CON_REG, w);
 }





 if (!polling) {
  timeout = wait_for_completion_timeout(&omap->cmd_complete,
            OMAP_I2C_TIMEOUT);
 } else {
  do {
   omap_i2c_wait(omap);
   ret = omap_i2c_xfer_data(omap);
  } while (ret == -EAGAIN);

  timeout = !ret;
 }

 if (timeout == 0) {
  dev_err(omap->dev, "controller timed out\n");
  omap_i2c_reset(omap);
  __omap_i2c_init(omap);
  return -ETIMEDOUT;
 }

 if (likely(!omap->cmd_err))
  return 0;


 if (omap->cmd_err & (OMAP_I2C_STAT_ROVR | OMAP_I2C_STAT_XUDF)) {
  omap_i2c_reset(omap);
  __omap_i2c_init(omap);
  return -EIO;
 }

 if (omap->cmd_err & OMAP_I2C_STAT_AL)
  return -EAGAIN;

 if (omap->cmd_err & OMAP_I2C_STAT_NACK) {
  if (msg->flags & I2C_M_IGNORE_NAK)
   return 0;

  w = omap_i2c_read_reg(omap, OMAP_I2C_CON_REG);
  w |= OMAP_I2C_CON_STP;
  omap_i2c_write_reg(omap, OMAP_I2C_CON_REG, w);
  return -EREMOTEIO;
 }
 return -EIO;
}
