
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* als_device_lux; } ;
struct tsl2583_chip {TYPE_1__ als_settings; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int ratio; int ch0; int ch1; } ;


 unsigned int ARRAY_SIZE (TYPE_2__*) ;
 struct iio_dev* dev_to_iio_dev (struct device*) ;
 struct tsl2583_chip* iio_priv (struct iio_dev*) ;
 scalar_t__ sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t in_illuminance_lux_table_show(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct iio_dev *indio_dev = dev_to_iio_dev(dev);
 struct tsl2583_chip *chip = iio_priv(indio_dev);
 unsigned int i;
 int offset = 0;

 for (i = 0; i < ARRAY_SIZE(chip->als_settings.als_device_lux); i++) {
  offset += sprintf(buf + offset, "%u,%u,%u,",
      chip->als_settings.als_device_lux[i].ratio,
      chip->als_settings.als_device_lux[i].ch0,
      chip->als_settings.als_device_lux[i].ch1);
  if (chip->als_settings.als_device_lux[i].ratio == 0) {




   offset--;
   break;
  }
 }

 offset += sprintf(buf + offset, "\n");

 return offset;
}
