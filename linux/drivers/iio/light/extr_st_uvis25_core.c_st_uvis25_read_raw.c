
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_uvis25_hw {int irq; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;


 int EINVAL ;

 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct st_uvis25_hw* iio_priv (struct iio_dev*) ;
 int st_uvis25_read_oneshot (struct st_uvis25_hw*,int ,int*) ;

__attribute__((used)) static int st_uvis25_read_raw(struct iio_dev *iio_dev,
         struct iio_chan_spec const *ch,
         int *val, int *val2, long mask)
{
 int ret;

 ret = iio_device_claim_direct_mode(iio_dev);
 if (ret)
  return ret;

 switch (mask) {
 case 128: {
  struct st_uvis25_hw *hw = iio_priv(iio_dev);
  if (hw->irq > 0)
   disable_irq(hw->irq);
  ret = st_uvis25_read_oneshot(hw, ch->address, val);
  if (hw->irq > 0)
   enable_irq(hw->irq);
  break;
 }
 default:
  ret = -EINVAL;
  break;
 }

 iio_device_release_direct_mode(iio_dev);

 return ret;
}
