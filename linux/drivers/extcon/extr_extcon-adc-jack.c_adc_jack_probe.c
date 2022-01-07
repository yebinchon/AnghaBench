
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct adc_jack_pdata {int name; int irq_flags; scalar_t__ wakeup_source; int handling_delay_ms; int consumer_channel; TYPE_1__* adc_conditions; int cable_names; } ;
struct TYPE_4__ {int work; } ;
struct adc_jack_data {int num_conditions; scalar_t__ irq; TYPE_2__ handler; scalar_t__ wakeup_source; int edev; int handling_delay; int chan; TYPE_1__* adc_conditions; int * dev; } ;
struct TYPE_3__ {scalar_t__ id; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 scalar_t__ EXTCON_NONE ;
 int GFP_KERNEL ;
 int INIT_DEFERRABLE_WORK (TYPE_2__*,int (*) (int *)) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int adc_jack_handler (int *) ;
 int adc_jack_irq_thread ;
 int dev_err (int *,char*,...) ;
 struct adc_jack_pdata* dev_get_platdata (int *) ;
 int device_init_wakeup (int *,int) ;
 int devm_extcon_dev_allocate (int *,int ) ;
 int devm_extcon_dev_register (int *,int ) ;
 struct adc_jack_data* devm_kzalloc (int *,int,int ) ;
 int iio_channel_get (int *,int ) ;
 int msecs_to_jiffies (int ) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct adc_jack_data*) ;
 int request_any_context_irq (scalar_t__,int ,int ,int ,struct adc_jack_data*) ;

__attribute__((used)) static int adc_jack_probe(struct platform_device *pdev)
{
 struct adc_jack_data *data;
 struct adc_jack_pdata *pdata = dev_get_platdata(&pdev->dev);
 int i, err = 0;

 data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 if (!pdata->cable_names) {
  dev_err(&pdev->dev, "error: cable_names not defined.\n");
  return -EINVAL;
 }

 data->dev = &pdev->dev;
 data->edev = devm_extcon_dev_allocate(&pdev->dev, pdata->cable_names);
 if (IS_ERR(data->edev)) {
  dev_err(&pdev->dev, "failed to allocate extcon device\n");
  return -ENOMEM;
 }

 if (!pdata->adc_conditions) {
  dev_err(&pdev->dev, "error: adc_conditions not defined.\n");
  return -EINVAL;
 }
 data->adc_conditions = pdata->adc_conditions;


 for (i = 0; data->adc_conditions[i].id != EXTCON_NONE; i++);
 data->num_conditions = i;

 data->chan = iio_channel_get(&pdev->dev, pdata->consumer_channel);
 if (IS_ERR(data->chan))
  return PTR_ERR(data->chan);

 data->handling_delay = msecs_to_jiffies(pdata->handling_delay_ms);
 data->wakeup_source = pdata->wakeup_source;

 INIT_DEFERRABLE_WORK(&data->handler, adc_jack_handler);

 platform_set_drvdata(pdev, data);

 err = devm_extcon_dev_register(&pdev->dev, data->edev);
 if (err)
  return err;

 data->irq = platform_get_irq(pdev, 0);
 if (data->irq < 0)
  return -ENODEV;

 err = request_any_context_irq(data->irq, adc_jack_irq_thread,
   pdata->irq_flags, pdata->name, data);

 if (err < 0) {
  dev_err(&pdev->dev, "error: irq %d\n", data->irq);
  return err;
 }

 if (data->wakeup_source)
  device_init_wakeup(&pdev->dev, 1);

 adc_jack_handler(&data->handler.work);
 return 0;
}
