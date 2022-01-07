
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_msg {int dummy; } ;
struct bcm_iproc_i2c_dev {int device; int xfer_is_done; scalar_t__ irq; int done; } ;


 int BIT (int ) ;
 int ETIMEDOUT ;
 int I2C_TIMEOUT_MSEC ;
 int IE_OFFSET ;
 int ISR_MASK ;
 int IS_OFFSET ;
 int M_CMD_OFFSET ;
 int M_FIFO_CTRL_OFFSET ;
 int M_FIFO_RX_FLUSH_SHIFT ;
 int M_FIFO_TX_FLUSH_SHIFT ;
 int bcm_iproc_i2c_check_status (struct bcm_iproc_i2c_dev*,struct i2c_msg*) ;
 int bcm_iproc_i2c_process_m_event (struct bcm_iproc_i2c_dev*,int) ;
 int cond_resched () ;
 int cpu_relax () ;
 int dev_err (int ,char*) ;
 int iproc_i2c_rd_reg (struct bcm_iproc_i2c_dev*,int ) ;
 int iproc_i2c_wr_reg (struct bcm_iproc_i2c_dev*,int ,int) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int synchronize_irq (scalar_t__) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 unsigned long wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static int bcm_iproc_i2c_xfer_wait(struct bcm_iproc_i2c_dev *iproc_i2c,
       struct i2c_msg *msg,
       u32 cmd)
{
 unsigned long time_left = msecs_to_jiffies(I2C_TIMEOUT_MSEC);
 u32 val, status;
 int ret;

 iproc_i2c_wr_reg(iproc_i2c, M_CMD_OFFSET, cmd);

 if (iproc_i2c->irq) {
  time_left = wait_for_completion_timeout(&iproc_i2c->done,
       time_left);

  iproc_i2c_wr_reg(iproc_i2c, IE_OFFSET, 0);

  iproc_i2c_rd_reg(iproc_i2c, IE_OFFSET);

  synchronize_irq(iproc_i2c->irq);

 } else {
  unsigned long timeout = jiffies + time_left;

  do {
   status = iproc_i2c_rd_reg(iproc_i2c,
        IS_OFFSET) & ISR_MASK;
   bcm_iproc_i2c_process_m_event(iproc_i2c, status);
   iproc_i2c_wr_reg(iproc_i2c, IS_OFFSET, status);

   if (time_after(jiffies, timeout)) {
    time_left = 0;
    break;
   }

   cpu_relax();
   cond_resched();
  } while (!iproc_i2c->xfer_is_done);
 }

 if (!time_left && !iproc_i2c->xfer_is_done) {
  dev_err(iproc_i2c->device, "transaction timed out\n");


  val = BIT(M_FIFO_RX_FLUSH_SHIFT) | BIT(M_FIFO_TX_FLUSH_SHIFT);
  iproc_i2c_wr_reg(iproc_i2c, M_FIFO_CTRL_OFFSET, val);
  return -ETIMEDOUT;
 }

 ret = bcm_iproc_i2c_check_status(iproc_i2c, msg);
 if (ret) {

  val = BIT(M_FIFO_RX_FLUSH_SHIFT) | BIT(M_FIFO_TX_FLUSH_SHIFT);
  iproc_i2c_wr_reg(iproc_i2c, M_FIFO_CTRL_OFFSET, val);
  return ret;
 }

 return 0;
}
