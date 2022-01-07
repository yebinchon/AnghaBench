
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpc2k_i2c {int msg_status; int irq; int wait; scalar_t__ base; int msg_idx; TYPE_1__* msg; } ;
struct TYPE_2__ {int flags; scalar_t__ len; int * buf; } ;


 int EBUSY ;
 int ETIMEDOUT ;
 int I2C_M_NOSTART ;
 int I2C_M_RD ;
 scalar_t__ LPC24XX_I2CONCLR ;
 scalar_t__ LPC24XX_I2CONSET ;
 scalar_t__ LPC24XX_I2DAT ;
 int LPC24XX_SI ;
 int LPC24XX_STA ;
 int WARN_ON (int) ;
 int disable_irq_nosync (int ) ;
 int enable_irq (int ) ;
 int msecs_to_jiffies (int) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ wait_event_timeout (int ,int,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int lpc2k_process_msg(struct lpc2k_i2c *i2c, int msgidx)
{

 if (!msgidx) {
  writel(LPC24XX_STA, i2c->base + LPC24XX_I2CONSET);
 } else {





  if (unlikely(i2c->msg->flags & I2C_M_NOSTART)) {
   WARN_ON(i2c->msg->len == 0);

   if (!(i2c->msg->flags & I2C_M_RD)) {

    writel(i2c->msg->buf[0],
           i2c->base + LPC24XX_I2DAT);
    i2c->msg_idx++;
   }
  } else {

   writel(LPC24XX_STA, i2c->base + LPC24XX_I2CONSET);
  }

  writel(LPC24XX_SI, i2c->base + LPC24XX_I2CONCLR);
 }

 enable_irq(i2c->irq);


 if (wait_event_timeout(i2c->wait, i2c->msg_status != -EBUSY,
          msecs_to_jiffies(1000)) == 0) {
  disable_irq_nosync(i2c->irq);

  return -ETIMEDOUT;
 }

 return i2c->msg_status;
}
