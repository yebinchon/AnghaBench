
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int dummy; } ;
struct iio_dev {int dev; } ;
typedef enum bmi160_int_pin { ____Placeholder_bmi160_int_pin } bmi160_int_pin ;


 int EINVAL ;
 int bmi160_config_device_irq (struct iio_dev*,int ,int) ;
 int bmi160_probe_trigger (struct iio_dev*,int,int ) ;
 int dev_err (int *,char*,int) ;
 struct irq_data* irq_get_irq_data (int) ;
 int irqd_get_trigger_type (struct irq_data*) ;

__attribute__((used)) static int bmi160_setup_irq(struct iio_dev *indio_dev, int irq,
       enum bmi160_int_pin pin)
{
 struct irq_data *desc;
 u32 irq_type;
 int ret;

 desc = irq_get_irq_data(irq);
 if (!desc) {
  dev_err(&indio_dev->dev, "Could not find IRQ %d\n", irq);
  return -EINVAL;
 }

 irq_type = irqd_get_trigger_type(desc);

 ret = bmi160_config_device_irq(indio_dev, irq_type, pin);
 if (ret)
  return ret;

 return bmi160_probe_trigger(indio_dev, irq, irq_type);
}
