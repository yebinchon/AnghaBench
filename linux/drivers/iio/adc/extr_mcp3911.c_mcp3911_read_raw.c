
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mcp3911 {int lock; int vref; } ;
struct TYPE_2__ {int parent; } ;
struct iio_dev {TYPE_1__ dev; } ;
struct iio_chan_spec {int channel; } ;


 int EINVAL ;



 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 int MCP3911_CHANNEL (int ) ;
 int MCP3911_INT_VREF_UV ;
 int MCP3911_OFFCAL (int ) ;
 int dev_err (int ,char*,int) ;
 struct mcp3911* iio_priv (struct iio_dev*) ;
 int mcp3911_read (struct mcp3911*,int ,int*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int mcp3911_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *channel, int *val,
       int *val2, long mask)
{
 struct mcp3911 *adc = iio_priv(indio_dev);
 int ret = -EINVAL;

 mutex_lock(&adc->lock);
 switch (mask) {
 case 129:
  ret = mcp3911_read(adc,
       MCP3911_CHANNEL(channel->channel), val, 3);
  if (ret)
   goto out;

  ret = IIO_VAL_INT;
  break;

 case 130:
  ret = mcp3911_read(adc,
       MCP3911_OFFCAL(channel->channel), val, 3);
  if (ret)
   goto out;

  ret = IIO_VAL_INT;
  break;

 case 128:
  if (adc->vref) {
   ret = regulator_get_voltage(adc->vref);
   if (ret < 0) {
    dev_err(indio_dev->dev.parent,
     "failed to get vref voltage: %d\n",
           ret);
    goto out;
   }

   *val = ret / 1000;
  } else {
   *val = MCP3911_INT_VREF_UV;
  }

  *val2 = 24;
  ret = IIO_VAL_FRACTIONAL_LOG2;
  break;
 }

out:
 mutex_unlock(&adc->lock);
 return ret;
}
