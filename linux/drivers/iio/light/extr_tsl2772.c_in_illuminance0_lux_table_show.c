
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tsl2772_chip {TYPE_1__* tsl2772_device_lux; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int ch0; int ch1; } ;


 int PAGE_SIZE ;
 int TSL2772_MAX_LUX_TABLE_SIZE ;
 int dev_to_iio_dev (struct device*) ;
 struct tsl2772_chip* iio_priv (int ) ;
 scalar_t__ snprintf (char*,int ,char*,...) ;

__attribute__((used)) static ssize_t in_illuminance0_lux_table_show(struct device *dev,
           struct device_attribute *attr,
           char *buf)
{
 struct tsl2772_chip *chip = iio_priv(dev_to_iio_dev(dev));
 int i = 0;
 int offset = 0;

 while (i < TSL2772_MAX_LUX_TABLE_SIZE) {
  offset += snprintf(buf + offset, PAGE_SIZE, "%u,%u,",
   chip->tsl2772_device_lux[i].ch0,
   chip->tsl2772_device_lux[i].ch1);
  if (chip->tsl2772_device_lux[i].ch0 == 0) {




   offset--;
   break;
  }
  i++;
 }

 offset += snprintf(buf + offset, PAGE_SIZE, "\n");
 return offset;
}
