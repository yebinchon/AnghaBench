
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ltr501_data {struct ltr501_chip_info* chip_info; } ;
struct ltr501_chip_info {int als_gain_tbl_size; TYPE_1__* als_gain; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ scale; int uscale; } ;


 scalar_t__ LTR501_RESERVED_GAIN ;
 scalar_t__ PAGE_SIZE ;
 int dev_to_iio_dev (struct device*) ;
 struct ltr501_data* iio_priv (int ) ;
 scalar_t__ scnprintf (char*,scalar_t__,char*,scalar_t__,int ) ;

__attribute__((used)) static ssize_t ltr501_show_intensity_scale_avail(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct ltr501_data *data = iio_priv(dev_to_iio_dev(dev));
 struct ltr501_chip_info *info = data->chip_info;
 ssize_t len = 0;
 int i;

 for (i = 0; i < info->als_gain_tbl_size; i++) {
  if (info->als_gain[i].scale == LTR501_RESERVED_GAIN)
   continue;
  len += scnprintf(buf + len, PAGE_SIZE - len, "%d.%06d ",
     info->als_gain[i].scale,
     info->als_gain[i].uscale);
 }

 buf[len - 1] = '\n';

 return len;
}
