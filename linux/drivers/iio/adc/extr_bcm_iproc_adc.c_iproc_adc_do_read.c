
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct iproc_adc_priv {int chan_val; int chan_id; int mutex; int regmap; int completion; } ;
struct iio_dev {int dev; } ;


 int BIT (int) ;
 int EIO ;
 int ETIMEDOUT ;
 int IPROC_ADC_AUXDATA_RDY_INTR ;
 int IPROC_ADC_CHANNEL_ENABLE ;
 int IPROC_ADC_CHANNEL_ENABLE_MASK ;
 scalar_t__ IPROC_ADC_CHANNEL_INTERRUPT_MASK ;
 int IPROC_ADC_CHANNEL_MODE ;
 int IPROC_ADC_CHANNEL_MODE_MASK ;
 int IPROC_ADC_CHANNEL_MODE_SNAPSHOT ;
 int IPROC_ADC_CHANNEL_OFFSET ;
 scalar_t__ IPROC_ADC_CHANNEL_REGCTL1 ;
 scalar_t__ IPROC_ADC_CHANNEL_REGCTL2 ;
 int IPROC_ADC_CHANNEL_ROUNDS ;
 int IPROC_ADC_CHANNEL_ROUNDS_MASK ;
 int IPROC_ADC_CHANNEL_WATERMARK_MASK ;
 int IPROC_ADC_CHANNEL_WTRMRK_INTR_MASK ;
 int IPROC_ADC_INTMASK_RETRY_ATTEMPTS ;
 int IPROC_ADC_INTR ;
 int IPROC_ADC_INTR_MASK ;
 int IPROC_ADC_READ_TIMEOUT ;
 int IPROC_ADC_WATER_MARK_INTR_ENABLE ;
 scalar_t__ IPROC_INTERRUPT_MASK ;
 scalar_t__ IPROC_INTERRUPT_STATUS ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*) ;
 struct iproc_adc_priv* iio_priv (struct iio_dev*) ;
 int iproc_adc_reg_dump (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,scalar_t__,int*) ;
 int regmap_update_bits (int ,scalar_t__,int,int) ;
 int regmap_write (int ,scalar_t__,int) ;
 int reinit_completion (int *) ;
 int udelay (int) ;
 scalar_t__ wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int iproc_adc_do_read(struct iio_dev *indio_dev,
      int channel,
      u16 *p_adc_data)
{
 int read_len = 0;
 u32 val;
 u32 mask;
 u32 val_check;
 int failed_cnt = 0;
 struct iproc_adc_priv *adc_priv = iio_priv(indio_dev);

 mutex_lock(&adc_priv->mutex);





 adc_priv->chan_val = -1;
 adc_priv->chan_id = channel;

 reinit_completion(&adc_priv->completion);

 regmap_update_bits(adc_priv->regmap, IPROC_INTERRUPT_STATUS,
   IPROC_ADC_INTR_MASK | IPROC_ADC_AUXDATA_RDY_INTR,
   ((0x0 << channel) << IPROC_ADC_INTR) |
   IPROC_ADC_AUXDATA_RDY_INTR);


 val = (BIT(IPROC_ADC_CHANNEL_ROUNDS) |
  (IPROC_ADC_CHANNEL_MODE_SNAPSHOT << IPROC_ADC_CHANNEL_MODE) |
  (0x1 << IPROC_ADC_CHANNEL_ENABLE));

 mask = IPROC_ADC_CHANNEL_ROUNDS_MASK | IPROC_ADC_CHANNEL_MODE_MASK |
  IPROC_ADC_CHANNEL_ENABLE_MASK;
 regmap_update_bits(adc_priv->regmap, (IPROC_ADC_CHANNEL_REGCTL1 +
    IPROC_ADC_CHANNEL_OFFSET * channel),
    mask, val);


 regmap_update_bits(adc_priv->regmap, (IPROC_ADC_CHANNEL_REGCTL2 +
     IPROC_ADC_CHANNEL_OFFSET * channel),
     IPROC_ADC_CHANNEL_WATERMARK_MASK,
     0x1);


 regmap_update_bits(adc_priv->regmap, (IPROC_ADC_CHANNEL_INTERRUPT_MASK +
     IPROC_ADC_CHANNEL_OFFSET *
     channel),
     IPROC_ADC_CHANNEL_WTRMRK_INTR_MASK,
     IPROC_ADC_WATER_MARK_INTR_ENABLE);
 regmap_read(adc_priv->regmap, IPROC_INTERRUPT_MASK, &val);


 val |= (BIT(channel) << IPROC_ADC_INTR);
 regmap_write(adc_priv->regmap, IPROC_INTERRUPT_MASK, val);
 regmap_read(adc_priv->regmap, IPROC_INTERRUPT_MASK, &val_check);
 while (val_check != val) {
  failed_cnt++;

  if (failed_cnt > IPROC_ADC_INTMASK_RETRY_ATTEMPTS)
   break;

  udelay(10);
  regmap_update_bits(adc_priv->regmap, IPROC_INTERRUPT_MASK,
    IPROC_ADC_INTR_MASK,
    ((0x1 << channel) <<
    IPROC_ADC_INTR));

  regmap_read(adc_priv->regmap, IPROC_INTERRUPT_MASK, &val_check);
 }

 if (failed_cnt) {
  dev_dbg(&indio_dev->dev,
   "IntMask failed (%d times)", failed_cnt);
  if (failed_cnt > IPROC_ADC_INTMASK_RETRY_ATTEMPTS) {
   dev_err(&indio_dev->dev,
    "IntMask set failed. Read will likely fail.");
   read_len = -EIO;
   goto adc_err;
  };
 }
 regmap_read(adc_priv->regmap, IPROC_INTERRUPT_MASK, &val_check);

 if (wait_for_completion_timeout(&adc_priv->completion,
  IPROC_ADC_READ_TIMEOUT) > 0) {


  *p_adc_data = adc_priv->chan_val & 0xFFFF;
  read_len = sizeof(*p_adc_data);

 } else {






  read_len = -ETIMEDOUT;
  goto adc_err;
 }
 mutex_unlock(&adc_priv->mutex);

 return read_len;

adc_err:
 regmap_update_bits(adc_priv->regmap, IPROC_INTERRUPT_MASK,
      IPROC_ADC_INTR_MASK,
      ((0x0 << channel) << IPROC_ADC_INTR));

 regmap_update_bits(adc_priv->regmap, IPROC_INTERRUPT_STATUS,
      IPROC_ADC_INTR_MASK,
      ((0x0 << channel) << IPROC_ADC_INTR));

 dev_err(&indio_dev->dev, "Timed out waiting for ADC data!\n");
 iproc_adc_reg_dump(indio_dev);
 mutex_unlock(&adc_priv->mutex);

 return read_len;
}
