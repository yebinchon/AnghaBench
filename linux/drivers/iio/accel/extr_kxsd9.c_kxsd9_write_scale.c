
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kxsd9_state {int scale; int map; } ;
struct iio_dev {int dummy; } ;


 int EINVAL ;
 int KXSD9_CTRL_C_FS_MASK ;
 int KXSD9_REG_CTRL_C ;
 struct kxsd9_state* iio_priv (struct iio_dev*) ;
 int* kxsd9_micro_scales ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int kxsd9_write_scale(struct iio_dev *indio_dev, int micro)
{
 int ret, i;
 struct kxsd9_state *st = iio_priv(indio_dev);
 bool foundit = 0;

 for (i = 0; i < 4; i++)
  if (micro == kxsd9_micro_scales[i]) {
   foundit = 1;
   break;
  }
 if (!foundit)
  return -EINVAL;

 ret = regmap_update_bits(st->map,
     KXSD9_REG_CTRL_C,
     KXSD9_CTRL_C_FS_MASK,
     i);
 if (ret < 0)
  goto error_ret;


 st->scale = i;

error_ret:
 return ret;
}
