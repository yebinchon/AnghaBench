
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct tiadc_device {int channels; int* channel_step; int fifo1_lock; int mfd_tscadc; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t scan_index; } ;


 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 unsigned int FIFOREAD_CHNLID_MASK ;
 unsigned int FIFOREAD_DATA_MASK ;
 int IDLE_TIMEOUT ;
 int IIO_VAL_INT ;
 int REG_FIFO1 ;
 int REG_FIFO1CNT ;
 int am335x_tsc_se_adc_done (int ) ;
 int am335x_tsc_se_set_once (int ,int ) ;
 int get_adc_chan_step_mask (struct tiadc_device*,struct iio_chan_spec const*) ;
 scalar_t__ iio_buffer_enabled (struct iio_dev*) ;
 struct tiadc_device* iio_priv (struct iio_dev*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned int tiadc_readl (struct tiadc_device*,int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int tiadc_read_raw(struct iio_dev *indio_dev,
  struct iio_chan_spec const *chan,
  int *val, int *val2, long mask)
{
 struct tiadc_device *adc_dev = iio_priv(indio_dev);
 int ret = IIO_VAL_INT;
 int i, map_val;
 unsigned int fifo1count, read, stepid;
 bool found = 0;
 u32 step_en;
 unsigned long timeout;

 if (iio_buffer_enabled(indio_dev))
  return -EBUSY;

 step_en = get_adc_chan_step_mask(adc_dev, chan);
 if (!step_en)
  return -EINVAL;

 mutex_lock(&adc_dev->fifo1_lock);
 fifo1count = tiadc_readl(adc_dev, REG_FIFO1CNT);
 while (fifo1count--)
  tiadc_readl(adc_dev, REG_FIFO1);

 am335x_tsc_se_set_once(adc_dev->mfd_tscadc, step_en);

 timeout = jiffies + msecs_to_jiffies
    (IDLE_TIMEOUT * adc_dev->channels);

 while (1) {
  fifo1count = tiadc_readl(adc_dev, REG_FIFO1CNT);
  if (fifo1count)
   break;

  if (time_after(jiffies, timeout)) {
   am335x_tsc_se_adc_done(adc_dev->mfd_tscadc);
   ret = -EAGAIN;
   goto err_unlock;
  }
 }
 map_val = adc_dev->channel_step[chan->scan_index];
 for (i = 0; i < fifo1count; i++) {
  read = tiadc_readl(adc_dev, REG_FIFO1);
  stepid = read & FIFOREAD_CHNLID_MASK;
  stepid = stepid >> 0x10;

  if (stepid == map_val) {
   read = read & FIFOREAD_DATA_MASK;
   found = 1;
   *val = (u16) read;
  }
 }
 am335x_tsc_se_adc_done(adc_dev->mfd_tscadc);

 if (!found)
  ret = -EBUSY;

err_unlock:
 mutex_unlock(&adc_dev->fifo1_lock);
 return ret;
}
