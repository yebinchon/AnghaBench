
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct hts221_hw {int dummy; } ;


 int EINVAL ;
 int HTS221_SENSOR_H ;
 int HTS221_SENSOR_T ;




 int hts221_update_avg (struct hts221_hw*,int ,int) ;
 int hts221_update_odr (struct hts221_hw*,int) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct hts221_hw* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int hts221_write_raw(struct iio_dev *iio_dev,
       struct iio_chan_spec const *chan,
       int val, int val2, long mask)
{
 struct hts221_hw *hw = iio_priv(iio_dev);
 int ret;

 ret = iio_device_claim_direct_mode(iio_dev);
 if (ret)
  return ret;

 switch (mask) {
 case 130:
  ret = hts221_update_odr(hw, val);
  break;
 case 131:
  switch (chan->type) {
  case 129:
   ret = hts221_update_avg(hw, HTS221_SENSOR_H, val);
   break;
  case 128:
   ret = hts221_update_avg(hw, HTS221_SENSOR_T, val);
   break;
  default:
   ret = -EINVAL;
   break;
  }
  break;
 default:
  ret = -EINVAL;
  break;
 }

 iio_device_release_direct_mode(iio_dev);

 return ret;
}
