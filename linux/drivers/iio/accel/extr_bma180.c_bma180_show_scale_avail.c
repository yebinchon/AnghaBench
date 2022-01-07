
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bma180_data {TYPE_1__* part_info; } ;
typedef int ssize_t ;
struct TYPE_2__ {int num_scales; int scale_table; } ;


 int bma180_show_avail (char*,int ,int ,int) ;
 int dev_to_iio_dev (struct device*) ;
 struct bma180_data* iio_priv (int ) ;

__attribute__((used)) static ssize_t bma180_show_scale_avail(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct bma180_data *data = iio_priv(dev_to_iio_dev(dev));

 return bma180_show_avail(buf, data->part_info->scale_table,
  data->part_info->num_scales, 1);
}
