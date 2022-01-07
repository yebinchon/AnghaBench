
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpa2326_private {int data_ready; int trigger; int result; int regmap; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int ENODATA ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int ZPA2326_INT_SOURCE_DATA_READY ;
 int ZPA2326_INT_SOURCE_REG ;
 int complete (int *) ;
 scalar_t__ iio_buffer_enabled (struct iio_dev*) ;
 struct zpa2326_private* iio_priv (struct iio_dev*) ;
 int iio_trigger_poll_chained (int ) ;
 scalar_t__ iio_trigger_using_own (struct iio_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int zpa2326_warn (struct iio_dev*,char*,unsigned int) ;

__attribute__((used)) static irqreturn_t zpa2326_handle_threaded_irq(int irq, void *data)
{
 struct iio_dev *indio_dev = data;
 struct zpa2326_private *priv = iio_priv(indio_dev);
 unsigned int val;
 bool cont;
 irqreturn_t ret = IRQ_NONE;





 cont = (iio_buffer_enabled(indio_dev) &&
  iio_trigger_using_own(indio_dev));





 priv->result = regmap_read(priv->regmap, ZPA2326_INT_SOURCE_REG, &val);
 if (priv->result < 0) {
  if (cont)
   return IRQ_NONE;

  goto complete;
 }


 if (!(val & ZPA2326_INT_SOURCE_DATA_READY)) {






  zpa2326_warn(indio_dev, "unexpected interrupt status %02x",
        val);

  if (cont)
   return IRQ_NONE;

  priv->result = -ENODATA;
  goto complete;
 }


 iio_trigger_poll_chained(priv->trigger);

 if (cont)




  return IRQ_HANDLED;

 ret = IRQ_HANDLED;

complete:




 complete(&priv->data_ready);

 return ret;
}
