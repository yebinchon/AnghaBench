
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rmi_driver_data {int enabled; } ;
struct rmi_device_platform_data {int irq; } ;
struct rmi_device {int dev; TYPE_1__* xport; } ;
struct TYPE_2__ {int dev; } ;


 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 int dev_driver_string (int ) ;
 int dev_err (int *,char*,int ) ;
 struct rmi_driver_data* dev_get_drvdata (int *) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int,int ,struct rmi_device*) ;
 int irq_get_trigger_type (int ) ;
 struct rmi_device_platform_data* rmi_get_platform_data (struct rmi_device*) ;
 int rmi_irq_fn ;

__attribute__((used)) static int rmi_irq_init(struct rmi_device *rmi_dev)
{
 struct rmi_device_platform_data *pdata = rmi_get_platform_data(rmi_dev);
 struct rmi_driver_data *data = dev_get_drvdata(&rmi_dev->dev);
 int irq_flags = irq_get_trigger_type(pdata->irq);
 int ret;

 if (!irq_flags)
  irq_flags = IRQF_TRIGGER_LOW;

 ret = devm_request_threaded_irq(&rmi_dev->dev, pdata->irq, ((void*)0),
     rmi_irq_fn, irq_flags | IRQF_ONESHOT,
     dev_driver_string(rmi_dev->xport->dev),
     rmi_dev);
 if (ret < 0) {
  dev_err(&rmi_dev->dev, "Failed to register interrupt %d\n",
   pdata->irq);

  return ret;
 }

 data->enabled = 1;

 return 0;
}
