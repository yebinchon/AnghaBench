
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp3911 {int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;


 int EINVAL ;

 int MCP3911_OFFCAL (int ) ;
 int MCP3911_REG_STATUSCOM ;
 int MCP3911_STATUSCOM_EN_OFFCAL ;
 struct mcp3911* iio_priv (struct iio_dev*) ;
 int mcp3911_update (struct mcp3911*,int ,int ,int ,int) ;
 int mcp3911_write (struct mcp3911*,int ,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mcp3911_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *channel, int val,
       int val2, long mask)
{
 struct mcp3911 *adc = iio_priv(indio_dev);
 int ret = -EINVAL;

 mutex_lock(&adc->lock);
 switch (mask) {
 case 128:
  if (val2 != 0) {
   ret = -EINVAL;
   goto out;
  }


  ret = mcp3911_write(adc, MCP3911_OFFCAL(channel->channel), val,
        3);
  if (ret)
   goto out;


  ret = mcp3911_update(adc, MCP3911_REG_STATUSCOM,
    MCP3911_STATUSCOM_EN_OFFCAL,
    MCP3911_STATUSCOM_EN_OFFCAL, 2);
  break;
 }

out:
 mutex_unlock(&adc->lock);
 return ret;
}
