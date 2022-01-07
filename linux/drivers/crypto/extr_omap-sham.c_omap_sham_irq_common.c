
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_sham_dev {int done_task; int flags; int dev; } ;
typedef int irqreturn_t ;


 int FLAGS_BUSY ;
 int FLAGS_OUTPUT_READY ;
 int IRQ_HANDLED ;
 int dev_warn (int ,char*) ;
 int set_bit (int ,int *) ;
 int tasklet_schedule (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static irqreturn_t omap_sham_irq_common(struct omap_sham_dev *dd)
{
 if (!test_bit(FLAGS_BUSY, &dd->flags)) {
  dev_warn(dd->dev, "Interrupt when no active requests.\n");
 } else {
  set_bit(FLAGS_OUTPUT_READY, &dd->flags);
  tasklet_schedule(&dd->done_task);
 }

 return IRQ_HANDLED;
}
