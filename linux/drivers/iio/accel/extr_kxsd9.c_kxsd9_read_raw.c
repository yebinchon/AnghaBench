
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct kxsd9_state {int dev; int map; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;
typedef int raw_val ;
typedef int __be16 ;


 int EINVAL ;



 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 unsigned int KXSD9_CTRL_C_FS_MASK ;
 int KXSD9_REG_CTRL_C ;
 int KXSD9_ZERO_G_OFFSET ;
 int be16_to_cpu (int ) ;
 struct kxsd9_state* iio_priv (struct iio_dev*) ;
 int* kxsd9_micro_scales ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int regmap_bulk_read (int ,int ,int *,int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int kxsd9_read_raw(struct iio_dev *indio_dev,
     struct iio_chan_spec const *chan,
     int *val, int *val2, long mask)
{
 int ret = -EINVAL;
 struct kxsd9_state *st = iio_priv(indio_dev);
 unsigned int regval;
 __be16 raw_val;
 u16 nval;

 pm_runtime_get_sync(st->dev);

 switch (mask) {
 case 129:
  ret = regmap_bulk_read(st->map, chan->address, &raw_val,
           sizeof(raw_val));
  if (ret)
   goto error_ret;
  nval = be16_to_cpu(raw_val);

  nval >>= 4;
  *val = nval;
  ret = IIO_VAL_INT;
  break;
 case 130:

  *val = KXSD9_ZERO_G_OFFSET;
  ret = IIO_VAL_INT;
  break;
 case 128:
  ret = regmap_read(st->map,
      KXSD9_REG_CTRL_C,
      &regval);
  if (ret < 0)
   goto error_ret;
  *val = 0;
  *val2 = kxsd9_micro_scales[regval & KXSD9_CTRL_C_FS_MASK];
  ret = IIO_VAL_INT_PLUS_MICRO;
  break;
 }

error_ret:
 pm_runtime_mark_last_busy(st->dev);
 pm_runtime_put_autosuspend(st->dev);

 return ret;
}
