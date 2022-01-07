
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int als_cal_target; } ;
struct tsl2772_chip {TYPE_1__ settings; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int dev_to_iio_dev (struct device*) ;
 struct tsl2772_chip* iio_priv (int ) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t in_illuminance0_target_input_show(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct tsl2772_chip *chip = iio_priv(dev_to_iio_dev(dev));

 return snprintf(buf, PAGE_SIZE, "%d\n", chip->settings.als_cal_target);
}
