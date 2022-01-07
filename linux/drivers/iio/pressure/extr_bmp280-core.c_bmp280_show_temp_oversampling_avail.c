
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bmp280_data {TYPE_1__* chip_info; } ;
typedef int ssize_t ;
struct TYPE_2__ {int num_oversampling_temp_avail; int oversampling_temp_avail; } ;


 int bmp280_show_avail (char*,int ,int ) ;
 int dev_to_iio_dev (struct device*) ;
 struct bmp280_data* iio_priv (int ) ;

__attribute__((used)) static ssize_t bmp280_show_temp_oversampling_avail(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct bmp280_data *data = iio_priv(dev_to_iio_dev(dev));

 return bmp280_show_avail(buf, data->chip_info->oversampling_temp_avail,
     data->chip_info->num_oversampling_temp_avail);
}
