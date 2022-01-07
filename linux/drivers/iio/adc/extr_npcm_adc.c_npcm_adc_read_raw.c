
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct npcm_adc {int adc_sample_hz; int vref; int dev; } ;
struct iio_dev {int mlock; } ;
struct iio_chan_spec {int channel; } ;


 int EINVAL ;



 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int IS_ERR (int ) ;
 int NPCM_INT_VREF_MV ;
 int NPCM_RESOLUTION_BITS ;
 int dev_err (int ,char*) ;
 struct npcm_adc* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int npcm_adc_read (struct npcm_adc*,int*,int ) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int npcm_adc_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan, int *val,
        int *val2, long mask)
{
 int ret;
 int vref_uv;
 struct npcm_adc *info = iio_priv(indio_dev);

 switch (mask) {
 case 130:
  mutex_lock(&indio_dev->mlock);
  ret = npcm_adc_read(info, val, chan->channel);
  mutex_unlock(&indio_dev->mlock);
  if (ret) {
   dev_err(info->dev, "NPCM ADC read failed\n");
   return ret;
  }
  return IIO_VAL_INT;
 case 128:
  if (!IS_ERR(info->vref)) {
   vref_uv = regulator_get_voltage(info->vref);
   *val = vref_uv / 1000;
  } else {
   *val = NPCM_INT_VREF_MV;
  }
  *val2 = NPCM_RESOLUTION_BITS;
  return IIO_VAL_FRACTIONAL_LOG2;
 case 129:
  *val = info->adc_sample_hz;
  return IIO_VAL_INT;
 default:
  return -EINVAL;
 }

 return 0;
}
