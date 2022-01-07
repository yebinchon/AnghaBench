
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mma8452_data {TYPE_1__* chip_info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int mma_scales; } ;


 int ARRAY_SIZE (int ) ;
 int i2c_get_clientdata (int ) ;
 struct mma8452_data* iio_priv (int ) ;
 int mma8452_show_int_plus_micros (char*,int ,int ) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t mma8452_show_scale_avail(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct mma8452_data *data = iio_priv(i2c_get_clientdata(
          to_i2c_client(dev)));

 return mma8452_show_int_plus_micros(buf, data->chip_info->mma_scales,
  ARRAY_SIZE(data->chip_info->mma_scales));
}
