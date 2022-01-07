
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx9500_data {int regmap; } ;
struct iio_chan_spec {int channel; } ;
typedef int __be16 ;


 int IIO_VAL_INT ;
 int SX9500_REG_SENSOR_SEL ;
 int SX9500_REG_USE_MSB ;
 int be16_to_cpu (int ) ;
 int regmap_bulk_read (int ,int ,int *,int) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int sx9500_read_prox_data(struct sx9500_data *data,
     const struct iio_chan_spec *chan,
     int *val)
{
 int ret;
 __be16 regval;

 ret = regmap_write(data->regmap, SX9500_REG_SENSOR_SEL, chan->channel);
 if (ret < 0)
  return ret;

 ret = regmap_bulk_read(data->regmap, SX9500_REG_USE_MSB, &regval, 2);
 if (ret < 0)
  return ret;

 *val = be16_to_cpu(regval);

 return IIO_VAL_INT;
}
