
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; int channel; } ;
struct cpcap_adc_request {int result; } ;
struct cpcap_adc {int dev; int lock; int vendor; int reg; } ;


 int CPCAP_ADC_AD3 ;
 int CPCAP_VENDOR_ST ;
 int EINVAL ;


 int IIO_VAL_INT ;
 int cpcap_adc_init_request (struct cpcap_adc_request*,int ) ;
 int cpcap_adc_read_bank_scaled (struct cpcap_adc*,struct cpcap_adc_request*) ;
 int cpcap_adc_read_st_die_temp (struct cpcap_adc*,int ,int*) ;
 int cpcap_adc_start_bank (struct cpcap_adc*,struct cpcap_adc_request*) ;
 int cpcap_adc_stop_bank (struct cpcap_adc*) ;
 int dev_err (int ,char*,int) ;
 struct cpcap_adc* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int cpcap_adc_read(struct iio_dev *indio_dev,
     struct iio_chan_spec const *chan,
     int *val, int *val2, long mask)
{
 struct cpcap_adc *ddata = iio_priv(indio_dev);
 struct cpcap_adc_request req;
 int error;

 error = cpcap_adc_init_request(&req, chan->channel);
 if (error)
  return error;

 switch (mask) {
 case 128:
  mutex_lock(&ddata->lock);
  error = cpcap_adc_start_bank(ddata, &req);
  if (error)
   goto err_unlock;
  error = regmap_read(ddata->reg, chan->address, val);
  if (error)
   goto err_unlock;
  error = cpcap_adc_stop_bank(ddata);
  if (error)
   goto err_unlock;
  mutex_unlock(&ddata->lock);
  break;
 case 129:
  mutex_lock(&ddata->lock);
  error = cpcap_adc_start_bank(ddata, &req);
  if (error)
   goto err_unlock;
  if ((ddata->vendor == CPCAP_VENDOR_ST) &&
      (chan->channel == CPCAP_ADC_AD3)) {
   error = cpcap_adc_read_st_die_temp(ddata,
          chan->address,
          &req.result);
   if (error)
    goto err_unlock;
  } else {
   error = cpcap_adc_read_bank_scaled(ddata, &req);
   if (error)
    goto err_unlock;
  }
  error = cpcap_adc_stop_bank(ddata);
  if (error)
   goto err_unlock;
  mutex_unlock(&ddata->lock);
  *val = req.result;
  break;
 default:
  return -EINVAL;
 }

 return IIO_VAL_INT;

err_unlock:
 mutex_unlock(&ddata->lock);
 dev_err(ddata->dev, "error reading ADC: %i\n", error);

 return error;
}
