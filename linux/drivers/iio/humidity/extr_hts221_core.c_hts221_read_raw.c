
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int address; } ;
struct hts221_hw {int odr; TYPE_1__* sensors; } ;
struct hts221_avg {int* avg_avl; } ;
struct TYPE_2__ {size_t cur_avg_idx; } ;


 int EINVAL ;
 size_t HTS221_SENSOR_H ;
 size_t HTS221_SENSOR_T ;







 int IIO_VAL_INT ;
 struct hts221_avg* hts221_avg_list ;
 int hts221_get_sensor_offset (struct hts221_hw*,int ,int*,int*) ;
 int hts221_get_sensor_scale (struct hts221_hw*,int ,int*,int*) ;
 int hts221_read_oneshot (struct hts221_hw*,int ,int*) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct hts221_hw* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int hts221_read_raw(struct iio_dev *iio_dev,
      struct iio_chan_spec const *ch,
      int *val, int *val2, long mask)
{
 struct hts221_hw *hw = iio_priv(iio_dev);
 int ret;

 ret = iio_device_claim_direct_mode(iio_dev);
 if (ret)
  return ret;

 switch (mask) {
 case 132:
  ret = hts221_read_oneshot(hw, ch->address, val);
  break;
 case 130:
  ret = hts221_get_sensor_scale(hw, ch->type, val, val2);
  break;
 case 134:
  ret = hts221_get_sensor_offset(hw, ch->type, val, val2);
  break;
 case 131:
  *val = hw->odr;
  ret = IIO_VAL_INT;
  break;
 case 133: {
  u8 idx;
  const struct hts221_avg *avg;

  switch (ch->type) {
  case 129:
   avg = &hts221_avg_list[HTS221_SENSOR_H];
   idx = hw->sensors[HTS221_SENSOR_H].cur_avg_idx;
   *val = avg->avg_avl[idx];
   ret = IIO_VAL_INT;
   break;
  case 128:
   avg = &hts221_avg_list[HTS221_SENSOR_T];
   idx = hw->sensors[HTS221_SENSOR_T].cur_avg_idx;
   *val = avg->avg_avl[idx];
   ret = IIO_VAL_INT;
   break;
  default:
   ret = -EINVAL;
   break;
  }
  break;
 }
 default:
  ret = -EINVAL;
  break;
 }

 iio_device_release_direct_mode(iio_dev);

 return ret;
}
