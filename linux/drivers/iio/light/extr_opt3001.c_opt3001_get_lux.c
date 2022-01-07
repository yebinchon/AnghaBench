
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct opt3001 {int ok_to_ignore_lock; int result_ready; scalar_t__ int_time; int result; int low_thresh_exp; int low_thresh_mantissa; int dev; int client; scalar_t__ use_irq; int result_ready_queue; } ;


 int ETIMEDOUT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int OPT3001_CONFIGURATION ;
 int OPT3001_CONFIGURATION_CRF ;
 int OPT3001_CONFIGURATION_M_SINGLE ;
 scalar_t__ OPT3001_INT_TIME_SHORT ;
 int OPT3001_LOW_LIMIT ;
 int OPT3001_LOW_LIMIT_EOC_ENABLE ;
 int OPT3001_REG_EXPONENT (int) ;
 int OPT3001_REG_MANTISSA (int) ;
 int OPT3001_RESULT ;
 long OPT3001_RESULT_READY_LONG ;
 long OPT3001_RESULT_READY_SHORT ;
 int dev_err (int ,char*,int ) ;
 int i2c_smbus_read_word_swapped (int ,int ) ;
 int i2c_smbus_write_word_swapped (int ,int ,int) ;
 int msecs_to_jiffies (long) ;
 int msleep (long) ;
 int opt3001_set_mode (struct opt3001*,int*,int ) ;
 int opt3001_to_iio_ret (struct opt3001*,int ,int,int*,int*) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int opt3001_get_lux(struct opt3001 *opt, int *val, int *val2)
{
 int ret;
 u16 mantissa;
 u16 reg;
 u8 exponent;
 u16 value;
 long timeout;

 if (opt->use_irq) {





  ret = i2c_smbus_write_word_swapped(opt->client,
     OPT3001_LOW_LIMIT,
     OPT3001_LOW_LIMIT_EOC_ENABLE);
  if (ret < 0) {
   dev_err(opt->dev, "failed to write register %02x\n",
     OPT3001_LOW_LIMIT);
   return ret;
  }


  opt->ok_to_ignore_lock = 1;
 }


 opt->result_ready = 0;


 ret = i2c_smbus_read_word_swapped(opt->client, OPT3001_CONFIGURATION);
 if (ret < 0) {
  dev_err(opt->dev, "failed to read register %02x\n",
    OPT3001_CONFIGURATION);
  goto err;
 }

 reg = ret;
 opt3001_set_mode(opt, &reg, OPT3001_CONFIGURATION_M_SINGLE);

 ret = i2c_smbus_write_word_swapped(opt->client, OPT3001_CONFIGURATION,
   reg);
 if (ret < 0) {
  dev_err(opt->dev, "failed to write register %02x\n",
    OPT3001_CONFIGURATION);
  goto err;
 }

 if (opt->use_irq) {

  ret = wait_event_timeout(opt->result_ready_queue,
    opt->result_ready,
    msecs_to_jiffies(OPT3001_RESULT_READY_LONG));
 } else {

  timeout = (opt->int_time == OPT3001_INT_TIME_SHORT) ?
   OPT3001_RESULT_READY_SHORT : OPT3001_RESULT_READY_LONG;
  msleep(timeout);


  ret = i2c_smbus_read_word_swapped(opt->client,
        OPT3001_CONFIGURATION);
  if (ret < 0) {
   dev_err(opt->dev, "failed to read register %02x\n",
    OPT3001_CONFIGURATION);
   goto err;
  }

  if (!(ret & OPT3001_CONFIGURATION_CRF)) {
   ret = -ETIMEDOUT;
   goto err;
  }


  ret = i2c_smbus_read_word_swapped(opt->client, OPT3001_RESULT);
  if (ret < 0) {
   dev_err(opt->dev, "failed to read register %02x\n",
    OPT3001_RESULT);
   goto err;
  }
  opt->result = ret;
  opt->result_ready = 1;
 }

err:
 if (opt->use_irq)

  opt->ok_to_ignore_lock = 0;

 if (ret == 0)
  return -ETIMEDOUT;
 else if (ret < 0)
  return ret;

 if (opt->use_irq) {







  value = (opt->low_thresh_exp << 12) | opt->low_thresh_mantissa;
  ret = i2c_smbus_write_word_swapped(opt->client,
         OPT3001_LOW_LIMIT,
         value);
  if (ret < 0) {
   dev_err(opt->dev, "failed to write register %02x\n",
     OPT3001_LOW_LIMIT);
   return ret;
  }
 }

 exponent = OPT3001_REG_EXPONENT(opt->result);
 mantissa = OPT3001_REG_MANTISSA(opt->result);

 opt3001_to_iio_ret(opt, exponent, mantissa, val, val2);

 return IIO_VAL_INT_PLUS_MICRO;
}
