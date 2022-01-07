
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mx25_gcq_priv {int regs; int completed; } ;
struct iio_chan_spec {int channel; } ;
struct device {int dummy; } ;


 int ETIMEDOUT ;
 int IIO_VAL_INT ;
 int MX25_ADCQ_CR ;
 int MX25_ADCQ_CR_FQS ;
 int MX25_ADCQ_FIFO ;
 int MX25_ADCQ_FIFO_DATA (int ) ;
 int MX25_ADCQ_ITEM (int ,int ) ;
 int MX25_ADCQ_ITEM_7_0 ;
 int MX25_ADCQ_MR ;
 int MX25_ADCQ_MR_EOQ_IRQ ;
 int MX25_GCQ_TIMEOUT ;
 int dev_err (struct device*,char*) ;
 int regmap_read (int ,int ,int *) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;
 long wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static int mx25_gcq_get_raw_value(struct device *dev,
      struct iio_chan_spec const *chan,
      struct mx25_gcq_priv *priv,
      int *val)
{
 long timeout;
 u32 data;


 regmap_write(priv->regs, MX25_ADCQ_ITEM_7_0,
       MX25_ADCQ_ITEM(0, chan->channel));

 regmap_update_bits(priv->regs, MX25_ADCQ_MR, MX25_ADCQ_MR_EOQ_IRQ, 0);


 regmap_update_bits(priv->regs, MX25_ADCQ_CR, MX25_ADCQ_CR_FQS,
      MX25_ADCQ_CR_FQS);

 timeout = wait_for_completion_interruptible_timeout(
  &priv->completed, MX25_GCQ_TIMEOUT);
 if (timeout < 0) {
  dev_err(dev, "ADC wait for measurement failed\n");
  return timeout;
 } else if (timeout == 0) {
  dev_err(dev, "ADC timed out\n");
  return -ETIMEDOUT;
 }

 regmap_read(priv->regs, MX25_ADCQ_FIFO, &data);

 *val = MX25_ADCQ_FIFO_DATA(data);

 return IIO_VAL_INT;
}
