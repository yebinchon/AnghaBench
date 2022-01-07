
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int dev; } ;
struct device {int of_node; } ;
struct bmi160_data {int regmap; } ;
typedef enum bmi160_int_pin { ____Placeholder_bmi160_int_pin } bmi160_int_pin ;


 int BMI160_ACTIVE_HIGH ;
 int BMI160_EDGE_TRIGGERED ;
 int BMI160_NORMAL_WRITE_USLEEP ;
 int EINVAL ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_HIGH ;
 int IRQF_TRIGGER_LOW ;
 int IRQF_TRIGGER_RISING ;
 int bmi160_config_pin (int ,int,int,int,int ) ;
 int dev_err (int *,char*,int) ;
 struct bmi160_data* iio_priv (struct iio_dev*) ;
 int of_property_read_bool (int ,char*) ;
 struct device* regmap_get_device (int ) ;

__attribute__((used)) static int bmi160_config_device_irq(struct iio_dev *indio_dev, int irq_type,
        enum bmi160_int_pin pin)
{
 bool open_drain;
 u8 irq_mask;
 struct bmi160_data *data = iio_priv(indio_dev);
 struct device *dev = regmap_get_device(data->regmap);


 if (irq_type == IRQF_TRIGGER_RISING)
  irq_mask = BMI160_ACTIVE_HIGH | BMI160_EDGE_TRIGGERED;
 else if (irq_type == IRQF_TRIGGER_FALLING)
  irq_mask = BMI160_EDGE_TRIGGERED;
 else if (irq_type == IRQF_TRIGGER_HIGH)
  irq_mask = BMI160_ACTIVE_HIGH;
 else if (irq_type == IRQF_TRIGGER_LOW)
  irq_mask = 0;
 else {
  dev_err(&indio_dev->dev,
   "Invalid interrupt type 0x%x specified\n", irq_type);
  return -EINVAL;
 }

 open_drain = of_property_read_bool(dev->of_node, "drive-open-drain");

 return bmi160_config_pin(data->regmap, pin, open_drain, irq_mask,
     BMI160_NORMAL_WRITE_USLEEP);
}
