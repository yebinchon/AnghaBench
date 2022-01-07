
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct berlin2_adc_priv {int data_available; int data; int lock; int regmap; int wq; } ;


 int BERLIN2_SM_CTRL ;
 int BERLIN2_SM_CTRL_ADC_ROTATE ;
 int BERLIN2_SM_CTRL_TSEN_RESET ;
 int BERLIN2_SM_TSEN_CTRL ;
 int BERLIN2_SM_TSEN_CTRL_SETTLING_12 ;
 int BERLIN2_SM_TSEN_CTRL_SETTLING_MASK ;
 int BERLIN2_SM_TSEN_CTRL_START ;
 int BERLIN2_SM_TSEN_CTRL_TRIM (int) ;
 int BERLIN2_SM_TSEN_CTRL_TRIM_MASK ;
 int BERLIN2_SM_TSEN_STATUS ;
 int BERLIN2_SM_TSEN_STATUS_INT_EN ;
 int ETIMEDOUT ;
 struct berlin2_adc_priv* iio_priv (struct iio_dev*) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int berlin2_adc_tsen_read(struct iio_dev *indio_dev)
{
 struct berlin2_adc_priv *priv = iio_priv(indio_dev);
 int data, ret;

 mutex_lock(&priv->lock);


 regmap_write(priv->regmap, BERLIN2_SM_TSEN_STATUS,
       BERLIN2_SM_TSEN_STATUS_INT_EN);


 regmap_update_bits(priv->regmap, BERLIN2_SM_CTRL,
      BERLIN2_SM_CTRL_TSEN_RESET |
      BERLIN2_SM_CTRL_ADC_ROTATE,
      BERLIN2_SM_CTRL_ADC_ROTATE);


 regmap_update_bits(priv->regmap, BERLIN2_SM_TSEN_CTRL,
      BERLIN2_SM_TSEN_CTRL_TRIM_MASK |
      BERLIN2_SM_TSEN_CTRL_SETTLING_MASK |
      BERLIN2_SM_TSEN_CTRL_START,
      BERLIN2_SM_TSEN_CTRL_TRIM(3) |
      BERLIN2_SM_TSEN_CTRL_SETTLING_12 |
      BERLIN2_SM_TSEN_CTRL_START);

 ret = wait_event_interruptible_timeout(priv->wq, priv->data_available,
            msecs_to_jiffies(1000));


 regmap_update_bits(priv->regmap, BERLIN2_SM_TSEN_STATUS,
      BERLIN2_SM_TSEN_STATUS_INT_EN, 0);

 if (ret == 0)
  ret = -ETIMEDOUT;
 if (ret < 0) {
  mutex_unlock(&priv->lock);
  return ret;
 }

 regmap_update_bits(priv->regmap, BERLIN2_SM_TSEN_CTRL,
      BERLIN2_SM_TSEN_CTRL_START, 0);

 data = priv->data;
 priv->data_available = 0;

 mutex_unlock(&priv->lock);

 return data;
}
