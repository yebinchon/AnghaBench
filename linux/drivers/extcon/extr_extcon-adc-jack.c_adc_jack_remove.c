
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int work; } ;
struct adc_jack_data {int chan; TYPE_1__ handler; int irq; } ;


 int cancel_work_sync (int *) ;
 int free_irq (int ,struct adc_jack_data*) ;
 int iio_channel_release (int ) ;
 struct adc_jack_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int adc_jack_remove(struct platform_device *pdev)
{
 struct adc_jack_data *data = platform_get_drvdata(pdev);

 free_irq(data->irq, data);
 cancel_work_sync(&data->handler.work);
 iio_channel_release(data->chan);

 return 0;
}
