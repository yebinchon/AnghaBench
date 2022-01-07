
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct st_sensor_data {int regmap; } ;
struct iio_dev {int dummy; } ;


 int __ffs (int) ;
 struct st_sensor_data* iio_priv (struct iio_dev*) ;
 int regmap_update_bits (int ,int,int,int) ;

int st_sensors_write_data_with_mask(struct iio_dev *indio_dev,
        u8 reg_addr, u8 mask, u8 data)
{
 struct st_sensor_data *sdata = iio_priv(indio_dev);

 return regmap_update_bits(sdata->regmap,
      reg_addr, mask, data << __ffs(mask));
}
