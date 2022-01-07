
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct iio_trigger {int dummy; } ;
struct iio_interrupt_trigger_info {int irq; } ;


 int free_irq (int ,struct iio_trigger*) ;
 int iio_trigger_free (struct iio_trigger*) ;
 struct iio_interrupt_trigger_info* iio_trigger_get_drvdata (struct iio_trigger*) ;
 int iio_trigger_unregister (struct iio_trigger*) ;
 int kfree (struct iio_interrupt_trigger_info*) ;
 struct iio_trigger* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int iio_interrupt_trigger_remove(struct platform_device *pdev)
{
 struct iio_trigger *trig;
 struct iio_interrupt_trigger_info *trig_info;

 trig = platform_get_drvdata(pdev);
 trig_info = iio_trigger_get_drvdata(trig);
 iio_trigger_unregister(trig);
 free_irq(trig_info->irq, trig);
 kfree(trig_info);
 iio_trigger_free(trig);

 return 0;
}
