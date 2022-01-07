
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct berlin2_adc_priv {int data_available; int data; int lock; int regmap; int wq; } ;


 int BERLIN2_SM_ADC_STATUS ;
 int BERLIN2_SM_ADC_STATUS_INT_EN (int) ;
 int BERLIN2_SM_CTRL ;
 int BERLIN2_SM_CTRL_ADC_RESET ;
 int BERLIN2_SM_CTRL_ADC_SEL (int) ;
 int BERLIN2_SM_CTRL_ADC_SEL_MASK ;
 int BERLIN2_SM_CTRL_ADC_START ;
 int ETIMEDOUT ;
 struct berlin2_adc_priv* iio_priv (struct iio_dev*) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int berlin2_adc_read(struct iio_dev *indio_dev, int channel)
{
 struct berlin2_adc_priv *priv = iio_priv(indio_dev);
 int data, ret;

 mutex_lock(&priv->lock);


 regmap_write(priv->regmap, BERLIN2_SM_ADC_STATUS,
       BERLIN2_SM_ADC_STATUS_INT_EN(channel));


 regmap_update_bits(priv->regmap, BERLIN2_SM_CTRL,
      BERLIN2_SM_CTRL_ADC_RESET |
      BERLIN2_SM_CTRL_ADC_SEL_MASK |
      BERLIN2_SM_CTRL_ADC_START,
      BERLIN2_SM_CTRL_ADC_SEL(channel) |
      BERLIN2_SM_CTRL_ADC_START);

 ret = wait_event_interruptible_timeout(priv->wq, priv->data_available,
            msecs_to_jiffies(1000));


 regmap_update_bits(priv->regmap, BERLIN2_SM_ADC_STATUS,
      BERLIN2_SM_ADC_STATUS_INT_EN(channel), 0);

 if (ret == 0)
  ret = -ETIMEDOUT;
 if (ret < 0) {
  mutex_unlock(&priv->lock);
  return ret;
 }

 regmap_update_bits(priv->regmap, BERLIN2_SM_CTRL,
      BERLIN2_SM_CTRL_ADC_START, 0);

 data = priv->data;
 priv->data_available = 0;

 mutex_unlock(&priv->lock);

 return data;
}
