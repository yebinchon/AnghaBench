
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct opt3001 {scalar_t__ mode; int lock; int dev; int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int OPT3001_CONFIGURATION ;
 scalar_t__ OPT3001_CONFIGURATION_M_CONTINUOUS ;
 scalar_t__ OPT3001_CONFIGURATION_M_SHUTDOWN ;
 int dev_err (int ,char*,int ) ;
 int i2c_smbus_read_word_swapped (int ,int ) ;
 int i2c_smbus_write_word_swapped (int ,int ,int) ;
 struct opt3001* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int opt3001_set_mode (struct opt3001*,int*,int) ;

__attribute__((used)) static int opt3001_write_event_config(struct iio_dev *iio,
  const struct iio_chan_spec *chan, enum iio_event_type type,
  enum iio_event_direction dir, int state)
{
 struct opt3001 *opt = iio_priv(iio);
 int ret;
 u16 mode;
 u16 reg;

 if (state && opt->mode == OPT3001_CONFIGURATION_M_CONTINUOUS)
  return 0;

 if (!state && opt->mode == OPT3001_CONFIGURATION_M_SHUTDOWN)
  return 0;

 mutex_lock(&opt->lock);

 mode = state ? OPT3001_CONFIGURATION_M_CONTINUOUS
  : OPT3001_CONFIGURATION_M_SHUTDOWN;

 ret = i2c_smbus_read_word_swapped(opt->client, OPT3001_CONFIGURATION);
 if (ret < 0) {
  dev_err(opt->dev, "failed to read register %02x\n",
    OPT3001_CONFIGURATION);
  goto err;
 }

 reg = ret;
 opt3001_set_mode(opt, &reg, mode);

 ret = i2c_smbus_write_word_swapped(opt->client, OPT3001_CONFIGURATION,
   reg);
 if (ret < 0) {
  dev_err(opt->dev, "failed to write register %02x\n",
    OPT3001_CONFIGURATION);
  goto err;
 }

err:
 mutex_unlock(&opt->lock);

 return ret;
}
