
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {unsigned long flags; int start; } ;
struct platform_device {int dev; } ;
struct iio_trigger {int name; int * ops; } ;
struct iio_interrupt_trigger_info {int irq; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IRQ ;
 unsigned long IRQF_SHARED ;
 unsigned long IRQF_TRIGGER_MASK ;
 int dev_err (int *,char*,int) ;
 int free_irq (int,struct iio_trigger*) ;
 int iio_interrupt_trigger_ops ;
 int iio_interrupt_trigger_poll ;
 struct iio_trigger* iio_trigger_alloc (char*,int) ;
 int iio_trigger_free (struct iio_trigger*) ;
 int iio_trigger_register (struct iio_trigger*) ;
 int iio_trigger_set_drvdata (struct iio_trigger*,struct iio_interrupt_trigger_info*) ;
 int kfree (struct iio_interrupt_trigger_info*) ;
 struct iio_interrupt_trigger_info* kzalloc (int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct iio_trigger*) ;
 int request_irq (int,int ,unsigned long,int ,struct iio_trigger*) ;

__attribute__((used)) static int iio_interrupt_trigger_probe(struct platform_device *pdev)
{
 struct iio_interrupt_trigger_info *trig_info;
 struct iio_trigger *trig;
 unsigned long irqflags;
 struct resource *irq_res;
 int irq, ret = 0;

 irq_res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);

 if (irq_res == ((void*)0))
  return -ENODEV;

 irqflags = (irq_res->flags & IRQF_TRIGGER_MASK) | IRQF_SHARED;

 irq = irq_res->start;

 trig = iio_trigger_alloc("irqtrig%d", irq);
 if (!trig) {
  ret = -ENOMEM;
  goto error_ret;
 }

 trig_info = kzalloc(sizeof(*trig_info), GFP_KERNEL);
 if (!trig_info) {
  ret = -ENOMEM;
  goto error_free_trigger;
 }
 iio_trigger_set_drvdata(trig, trig_info);
 trig_info->irq = irq;
 trig->ops = &iio_interrupt_trigger_ops;
 ret = request_irq(irq, iio_interrupt_trigger_poll,
     irqflags, trig->name, trig);
 if (ret) {
  dev_err(&pdev->dev,
   "request IRQ-%d failed", irq);
  goto error_free_trig_info;
 }

 ret = iio_trigger_register(trig);
 if (ret)
  goto error_release_irq;
 platform_set_drvdata(pdev, trig);

 return 0;


error_release_irq:
 free_irq(irq, trig);
error_free_trig_info:
 kfree(trig_info);
error_free_trigger:
 iio_trigger_free(trig);
error_ret:
 return ret;
}
