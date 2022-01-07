
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct ad5686_state {int pwr_down_mask; int pwr_down_mode; int (* write ) (struct ad5686_state*,int ,int,unsigned int) ;int use_internal_vref; TYPE_1__* chip_info; } ;
typedef int ssize_t ;
struct TYPE_2__ {int regmap_type; } ;


 unsigned int AD5310_REF_BIT_MSK ;

 unsigned int AD5683_REF_BIT_MSK ;

 int AD5686_CMD_POWERDOWN_DAC ;

 unsigned int AD5693_REF_BIT_MSK ;

 int EINVAL ;
 struct ad5686_state* iio_priv (struct iio_dev*) ;
 int strtobool (char const*,int*) ;
 int stub1 (struct ad5686_state*,int ,int,unsigned int) ;

__attribute__((used)) static ssize_t ad5686_write_dac_powerdown(struct iio_dev *indio_dev,
       uintptr_t private,
       const struct iio_chan_spec *chan,
       const char *buf,
       size_t len)
{
 bool readin;
 int ret;
 struct ad5686_state *st = iio_priv(indio_dev);
 unsigned int val, ref_bit_msk;
 u8 shift, address = 0;

 ret = strtobool(buf, &readin);
 if (ret)
  return ret;

 if (readin)
  st->pwr_down_mask |= (0x3 << (chan->channel * 2));
 else
  st->pwr_down_mask &= ~(0x3 << (chan->channel * 2));

 switch (st->chip_info->regmap_type) {
 case 131:
  shift = 9;
  ref_bit_msk = AD5310_REF_BIT_MSK;
  break;
 case 130:
  shift = 13;
  ref_bit_msk = AD5683_REF_BIT_MSK;
  break;
 case 129:
  shift = 0;
  ref_bit_msk = 0;

  if (chan->channel > 0x7)
   address = 0x8;
  break;
 case 128:
  shift = 13;
  ref_bit_msk = AD5693_REF_BIT_MSK;
  break;
 default:
  return -EINVAL;
 }

 val = ((st->pwr_down_mask & st->pwr_down_mode) << shift);
 if (!st->use_internal_vref)
  val |= ref_bit_msk;

 ret = st->write(st, AD5686_CMD_POWERDOWN_DAC,
   address, val >> (address * 2));

 return ret ? ret : len;
}
