
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int flags; int addr; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;
struct img_i2c {int line_status; scalar_t__ mode; int int_enable; int lock; int last_msg; TYPE_3__ msg; TYPE_2__ adap; } ;
typedef int irqreturn_t ;


 int EIO ;
 int I2C_M_RD ;
 int INT_FIFO_EMPTY ;
 int INT_FIFO_FULL ;
 int INT_LEVEL ;
 int INT_SCLK_LOW_TIMEOUT ;
 int INT_SLAVE_EVENT ;
 int IRQ_HANDLED ;
 unsigned int ISR_COMPLETE (int ) ;
 unsigned int ISR_COMPLETE_M ;
 unsigned int ISR_FATAL (int ) ;
 unsigned int ISR_FATAL_M ;
 unsigned int ISR_STATUS_M ;
 unsigned int ISR_WAITSTOP ;
 int LINESTAT_CLEAR_SHIFT ;
 int LINESTAT_INPUT_DATA ;
 int LINESTAT_LATCHED ;
 int LINESTAT_STOP_BIT_DET ;
 scalar_t__ MODE_ATOMIC ;
 scalar_t__ MODE_AUTOMATIC ;
 scalar_t__ MODE_FATAL ;
 scalar_t__ MODE_RAW ;
 scalar_t__ MODE_SEQUENCE ;
 scalar_t__ MODE_WAITSTOP ;
 int SCB_CLEAR_REG ;
 int SCB_INT_CLEAR_REG ;
 int SCB_INT_MASK_REG ;
 int SCB_INT_STATUS_REG ;
 int SCB_STATUS_REG ;
 int dev_crit (int ,char*,char*,int ) ;
 unsigned int img_i2c_atomic (struct img_i2c*,int,int) ;
 unsigned int img_i2c_auto (struct img_i2c*,int,int) ;
 int img_i2c_complete_transaction (struct img_i2c*,int) ;
 unsigned int img_i2c_raw (struct img_i2c*,int,int) ;
 int img_i2c_readl (struct img_i2c*,int ) ;
 unsigned int img_i2c_sequence (struct img_i2c*,int) ;
 int img_i2c_switch_mode (struct img_i2c*,scalar_t__) ;
 int img_i2c_wr_rd_fence (struct img_i2c*) ;
 int img_i2c_writel (struct img_i2c*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t img_i2c_isr(int irq, void *dev_id)
{
 struct img_i2c *i2c = (struct img_i2c *)dev_id;
 u32 int_status, line_status;

 unsigned int hret;


 int_status = img_i2c_readl(i2c, SCB_INT_STATUS_REG);

 img_i2c_writel(i2c, SCB_INT_CLEAR_REG, int_status);





 line_status = img_i2c_readl(i2c, SCB_STATUS_REG);
 if (line_status & LINESTAT_LATCHED) {
  img_i2c_writel(i2c, SCB_CLEAR_REG,
         (line_status & LINESTAT_LATCHED)
    >> LINESTAT_CLEAR_SHIFT);
  img_i2c_wr_rd_fence(i2c);
 }

 spin_lock(&i2c->lock);


 i2c->line_status &= ~LINESTAT_INPUT_DATA;
 i2c->line_status |= line_status;





 if ((int_status & INT_SCLK_LOW_TIMEOUT) &&
     !(int_status & (INT_SLAVE_EVENT |
       INT_FIFO_EMPTY |
       INT_FIFO_FULL))) {
  dev_crit(i2c->adap.dev.parent,
    "fatal: clock low timeout occurred %s addr 0x%02x\n",
    (i2c->msg.flags & I2C_M_RD) ? "reading" : "writing",
    i2c->msg.addr);
  hret = ISR_FATAL(EIO);
  goto out;
 }

 if (i2c->mode == MODE_ATOMIC)
  hret = img_i2c_atomic(i2c, int_status, line_status);
 else if (i2c->mode == MODE_AUTOMATIC)
  hret = img_i2c_auto(i2c, int_status, line_status);
 else if (i2c->mode == MODE_SEQUENCE)
  hret = img_i2c_sequence(i2c, int_status);
 else if (i2c->mode == MODE_WAITSTOP && (int_status & INT_SLAVE_EVENT) &&
    (line_status & LINESTAT_STOP_BIT_DET))
  hret = ISR_COMPLETE(0);
 else if (i2c->mode == MODE_RAW)
  hret = img_i2c_raw(i2c, int_status, line_status);
 else
  hret = 0;


 img_i2c_writel(i2c, SCB_INT_CLEAR_REG, int_status & INT_LEVEL);

out:
 if (hret & ISR_WAITSTOP) {




  if (!i2c->last_msg || i2c->line_status & LINESTAT_STOP_BIT_DET)
   hret = ISR_COMPLETE(0);
  else
   img_i2c_switch_mode(i2c, MODE_WAITSTOP);
 }


 if (hret & ISR_COMPLETE_M) {
  int status = -(hret & ISR_STATUS_M);

  img_i2c_complete_transaction(i2c, status);
  if (hret & ISR_FATAL_M)
   img_i2c_switch_mode(i2c, MODE_FATAL);
 }


 img_i2c_writel(i2c, SCB_INT_MASK_REG, i2c->int_enable);

 spin_unlock(&i2c->lock);

 return IRQ_HANDLED;
}
