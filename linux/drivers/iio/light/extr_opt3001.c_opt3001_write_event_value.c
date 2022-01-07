
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct opt3001 {int high_thresh_mantissa; int high_thresh_exp; int low_thresh_mantissa; int low_thresh_exp; int lock; int dev; int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;


 int OPT3001_HIGH_LIMIT ;
 int OPT3001_LOW_LIMIT ;
 int dev_err (int ,char*,int,...) ;
 int i2c_smbus_write_word_swapped (int ,int,int) ;
 struct opt3001* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int opt3001_find_scale (struct opt3001*,int,int,int*) ;

__attribute__((used)) static int opt3001_write_event_value(struct iio_dev *iio,
  const struct iio_chan_spec *chan, enum iio_event_type type,
  enum iio_event_direction dir, enum iio_event_info info,
  int val, int val2)
{
 struct opt3001 *opt = iio_priv(iio);
 int ret;

 u16 mantissa;
 u16 value;
 u16 reg;

 u8 exponent;

 if (val < 0)
  return -EINVAL;

 mutex_lock(&opt->lock);

 ret = opt3001_find_scale(opt, val, val2, &exponent);
 if (ret < 0) {
  dev_err(opt->dev, "can't find scale for %d.%06u\n", val, val2);
  goto err;
 }

 mantissa = (((val * 1000) + (val2 / 1000)) / 10) >> exponent;
 value = (exponent << 12) | mantissa;

 switch (dir) {
 case 128:
  reg = OPT3001_HIGH_LIMIT;
  opt->high_thresh_mantissa = mantissa;
  opt->high_thresh_exp = exponent;
  break;
 case 129:
  reg = OPT3001_LOW_LIMIT;
  opt->low_thresh_mantissa = mantissa;
  opt->low_thresh_exp = exponent;
  break;
 default:
  ret = -EINVAL;
  goto err;
 }

 ret = i2c_smbus_write_word_swapped(opt->client, reg, value);
 if (ret < 0) {
  dev_err(opt->dev, "failed to write register %02x\n", reg);
  goto err;
 }

err:
 mutex_unlock(&opt->lock);

 return ret;
}
