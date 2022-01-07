
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opt3001 {int result; int result_ready; int result_ready_queue; int lock; int ok_to_ignore_lock; int dev; int client; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IIO_EV_DIR_FALLING ;
 int IIO_EV_DIR_RISING ;
 int IIO_EV_TYPE_THRESH ;
 int IIO_LIGHT ;
 int IIO_UNMOD_EVENT_CODE (int ,int ,int ,int ) ;
 int IRQ_HANDLED ;
 int OPT3001_CONFIGURATION ;
 int OPT3001_CONFIGURATION_CRF ;
 int OPT3001_CONFIGURATION_FH ;
 int OPT3001_CONFIGURATION_FL ;
 int OPT3001_CONFIGURATION_M_CONTINUOUS ;
 int OPT3001_CONFIGURATION_M_MASK ;
 int OPT3001_RESULT ;
 int dev_err (int ,char*,int ) ;
 int i2c_smbus_read_word_swapped (int ,int ) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct opt3001* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t opt3001_irq(int irq, void *_iio)
{
 struct iio_dev *iio = _iio;
 struct opt3001 *opt = iio_priv(iio);
 int ret;
 bool wake_result_ready_queue = 0;

 if (!opt->ok_to_ignore_lock)
  mutex_lock(&opt->lock);

 ret = i2c_smbus_read_word_swapped(opt->client, OPT3001_CONFIGURATION);
 if (ret < 0) {
  dev_err(opt->dev, "failed to read register %02x\n",
    OPT3001_CONFIGURATION);
  goto out;
 }

 if ((ret & OPT3001_CONFIGURATION_M_MASK) ==
   OPT3001_CONFIGURATION_M_CONTINUOUS) {
  if (ret & OPT3001_CONFIGURATION_FH)
   iio_push_event(iio,
     IIO_UNMOD_EVENT_CODE(IIO_LIGHT, 0,
       IIO_EV_TYPE_THRESH,
       IIO_EV_DIR_RISING),
     iio_get_time_ns(iio));
  if (ret & OPT3001_CONFIGURATION_FL)
   iio_push_event(iio,
     IIO_UNMOD_EVENT_CODE(IIO_LIGHT, 0,
       IIO_EV_TYPE_THRESH,
       IIO_EV_DIR_FALLING),
     iio_get_time_ns(iio));
 } else if (ret & OPT3001_CONFIGURATION_CRF) {
  ret = i2c_smbus_read_word_swapped(opt->client, OPT3001_RESULT);
  if (ret < 0) {
   dev_err(opt->dev, "failed to read register %02x\n",
     OPT3001_RESULT);
   goto out;
  }
  opt->result = ret;
  opt->result_ready = 1;
  wake_result_ready_queue = 1;
 }

out:
 if (!opt->ok_to_ignore_lock)
  mutex_unlock(&opt->lock);

 if (wake_result_ready_queue)
  wake_up(&opt->result_ready_queue);

 return IRQ_HANDLED;
}
