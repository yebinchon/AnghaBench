
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * orientation; } ;
struct inv_mpu6050_state {TYPE_1__ plat_data; } ;
struct iio_dev_attr {int address; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int s8 ;




 int EINVAL ;
 int PAGE_SIZE ;
 int dev_to_iio_dev (struct device*) ;
 struct inv_mpu6050_state* iio_priv (int ) ;
 int scnprintf (char*,int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 struct iio_dev_attr* to_iio_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t inv_attr_show(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct inv_mpu6050_state *st = iio_priv(dev_to_iio_dev(dev));
 struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
 s8 *m;

 switch (this_attr->address) {




 case 128:
 case 129:
  m = st->plat_data.orientation;

  return scnprintf(buf, PAGE_SIZE,
   "%d, %d, %d; %d, %d, %d; %d, %d, %d\n",
   m[0], m[1], m[2], m[3], m[4], m[5], m[6], m[7], m[8]);
 default:
  return -EINVAL;
 }
}
