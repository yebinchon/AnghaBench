
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sx9500_data {int regmap; TYPE_1__* client; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ETIMEDOUT ;
 int SX9500_CHAN_MASK ;
 unsigned int SX9500_COMPSTAT_MASK ;
 int SX9500_REG_PROX_CTRL0 ;
 int SX9500_REG_STAT ;
 int dev_err (int *,char*) ;
 struct sx9500_data* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int sx9500_init_compensation(struct iio_dev *indio_dev)
{
 struct sx9500_data *data = iio_priv(indio_dev);
 int i, ret;
 unsigned int val;

 ret = regmap_update_bits(data->regmap, SX9500_REG_PROX_CTRL0,
     SX9500_CHAN_MASK, SX9500_CHAN_MASK);
 if (ret < 0)
  return ret;

 for (i = 10; i >= 0; i--) {
  usleep_range(10000, 20000);
  ret = regmap_read(data->regmap, SX9500_REG_STAT, &val);
  if (ret < 0)
   goto out;
  if (!(val & SX9500_COMPSTAT_MASK))
   break;
 }

 if (i < 0) {
  dev_err(&data->client->dev, "initial compensation timed out");
  ret = -ETIMEDOUT;
 }

out:
 regmap_update_bits(data->regmap, SX9500_REG_PROX_CTRL0,
      SX9500_CHAN_MASK, 0);
 return ret;
}
