
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pa12203001_data {int map; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
typedef int __le16 ;


 int EINVAL ;




 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 unsigned int PA12203001_AFSR_MASK ;
 int PA12203001_ALS_EN_MASK ;
 int PA12203001_PX_EN_MASK ;
 int PA12203001_REG_ADL ;
 int PA12203001_REG_CFG0 ;
 int PA12203001_REG_PDH ;
 struct pa12203001_data* iio_priv (struct iio_dev*) ;
 int le16_to_cpu (int ) ;
 int* pa12203001_scales ;
 int pa12203001_set_power_state (struct pa12203001_data*,int,int ) ;
 int regmap_bulk_read (int ,int ,int *,int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int pa12203001_read_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan, int *val,
          int *val2, long mask)
{
 struct pa12203001_data *data = iio_priv(indio_dev);
 int ret;
 u8 dev_mask;
 unsigned int reg_byte;
 __le16 reg_word;

 switch (mask) {
 case 131:
  switch (chan->type) {
  case 129:
   dev_mask = PA12203001_ALS_EN_MASK;
   ret = pa12203001_set_power_state(data, 1, dev_mask);
   if (ret < 0)
    return ret;




   ret = regmap_bulk_read(data->map, PA12203001_REG_ADL,
            &reg_word, 2);
   if (ret < 0)
    goto reg_err;

   *val = le16_to_cpu(reg_word);
   ret = pa12203001_set_power_state(data, 0, dev_mask);
   if (ret < 0)
    return ret;
   break;
  case 128:
   dev_mask = PA12203001_PX_EN_MASK;
   ret = pa12203001_set_power_state(data, 1, dev_mask);
   if (ret < 0)
    return ret;
   ret = regmap_read(data->map, PA12203001_REG_PDH,
       &reg_byte);
   if (ret < 0)
    goto reg_err;

   *val = reg_byte;
   ret = pa12203001_set_power_state(data, 0, dev_mask);
   if (ret < 0)
    return ret;
   break;
  default:
   return -EINVAL;
  }
  return IIO_VAL_INT;
 case 130:
  ret = regmap_read(data->map, PA12203001_REG_CFG0, &reg_byte);
  if (ret < 0)
   return ret;
  *val = 0;
  reg_byte = (reg_byte & PA12203001_AFSR_MASK);
  *val2 = pa12203001_scales[reg_byte >> 4];
  return IIO_VAL_INT_PLUS_MICRO;
 default:
  return -EINVAL;
 }

reg_err:
 pa12203001_set_power_state(data, 0, dev_mask);
 return ret;
}
