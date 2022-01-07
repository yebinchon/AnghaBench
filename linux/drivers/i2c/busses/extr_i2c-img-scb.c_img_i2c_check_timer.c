
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct img_i2c {int int_enable; int lock; TYPE_2__ adap; } ;


 int INT_SLAVE_EVENT ;
 unsigned int LINESTAT_ABORT_DET ;
 int SCB_INT_MASK_REG ;
 int SCB_STATUS_REG ;
 int check_timer ;
 int dev_dbg (int ,char*) ;
 struct img_i2c* from_timer (int ,struct timer_list*,int ) ;
 struct img_i2c* i2c ;
 unsigned int img_i2c_readl (struct img_i2c*,int ) ;
 int img_i2c_writel (struct img_i2c*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void img_i2c_check_timer(struct timer_list *t)
{
 struct img_i2c *i2c = from_timer(i2c, t, check_timer);
 unsigned long flags;
 unsigned int line_status;

 spin_lock_irqsave(&i2c->lock, flags);
 line_status = img_i2c_readl(i2c, SCB_STATUS_REG);


 if (line_status & LINESTAT_ABORT_DET) {
  dev_dbg(i2c->adap.dev.parent,
   "abort condition detected by check timer\n");

  img_i2c_writel(i2c, SCB_INT_MASK_REG,
          i2c->int_enable | INT_SLAVE_EVENT);
 }

 spin_unlock_irqrestore(&i2c->lock, flags);
}
