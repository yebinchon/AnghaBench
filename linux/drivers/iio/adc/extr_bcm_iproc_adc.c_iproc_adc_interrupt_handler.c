
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iproc_adc_priv {int chan_id; int chan_val; int regmap; int completion; } ;
struct iio_dev {int dev; } ;
typedef int irqreturn_t ;


 scalar_t__ IPROC_ADC_CHANNEL_DATA ;
 scalar_t__ IPROC_ADC_CHANNEL_INTERRUPT_MASK ;
 scalar_t__ IPROC_ADC_CHANNEL_INTERRUPT_STATUS ;
 int IPROC_ADC_CHANNEL_OFFSET ;
 scalar_t__ IPROC_ADC_CHANNEL_STATUS ;
 int IPROC_ADC_CHANNEL_VALID_ENTERIES ;
 int IPROC_ADC_CHANNEL_VALID_ENTERIES_MASK ;
 int IPROC_ADC_CHANNEL_WTRMRK_INTR_MASK ;
 int IPROC_ADC_INTR ;
 int IPROC_ADC_INTR_MASK ;
 scalar_t__ IPROC_INTERRUPT_STATUS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int complete (int *) ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*,int) ;
 struct iproc_adc_priv* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,scalar_t__,int*) ;
 int regmap_write (int ,scalar_t__,int) ;

__attribute__((used)) static irqreturn_t iproc_adc_interrupt_handler(int irq, void *data)
{
 irqreturn_t retval = IRQ_NONE;
 struct iproc_adc_priv *adc_priv;
 struct iio_dev *indio_dev = data;
 unsigned int valid_entries;
 u32 intr_status;
 u32 intr_channels;
 u32 channel_status;
 u32 ch_intr_status;

 adc_priv = iio_priv(indio_dev);

 regmap_read(adc_priv->regmap, IPROC_INTERRUPT_STATUS, &intr_status);
 dev_dbg(&indio_dev->dev, "iproc_adc_interrupt_handler(),INTRPT_STS:%x\n",
   intr_status);

 intr_channels = (intr_status & IPROC_ADC_INTR_MASK) >> IPROC_ADC_INTR;
 if (intr_channels) {
  regmap_read(adc_priv->regmap,
       IPROC_ADC_CHANNEL_INTERRUPT_STATUS +
       IPROC_ADC_CHANNEL_OFFSET * adc_priv->chan_id,
       &ch_intr_status);

  if (ch_intr_status & IPROC_ADC_CHANNEL_WTRMRK_INTR_MASK) {
   regmap_read(adc_priv->regmap,
     IPROC_ADC_CHANNEL_STATUS +
     IPROC_ADC_CHANNEL_OFFSET *
     adc_priv->chan_id,
     &channel_status);

   valid_entries = ((channel_status &
    IPROC_ADC_CHANNEL_VALID_ENTERIES_MASK) >>
    IPROC_ADC_CHANNEL_VALID_ENTERIES);
   if (valid_entries >= 1) {
    regmap_read(adc_priv->regmap,
     IPROC_ADC_CHANNEL_DATA +
     IPROC_ADC_CHANNEL_OFFSET *
     adc_priv->chan_id,
     &adc_priv->chan_val);
    complete(&adc_priv->completion);
   } else {
    dev_err(&indio_dev->dev,
     "No data rcvd on channel %d\n",
     adc_priv->chan_id);
   }
   regmap_write(adc_priv->regmap,
     IPROC_ADC_CHANNEL_INTERRUPT_MASK +
     IPROC_ADC_CHANNEL_OFFSET *
     adc_priv->chan_id,
     (ch_intr_status &
     ~(IPROC_ADC_CHANNEL_WTRMRK_INTR_MASK)));
  }
  regmap_write(adc_priv->regmap,
    IPROC_ADC_CHANNEL_INTERRUPT_STATUS +
    IPROC_ADC_CHANNEL_OFFSET * adc_priv->chan_id,
    ch_intr_status);
  regmap_write(adc_priv->regmap, IPROC_INTERRUPT_STATUS,
    intr_channels);
  retval = IRQ_HANDLED;
 }

 return retval;
}
