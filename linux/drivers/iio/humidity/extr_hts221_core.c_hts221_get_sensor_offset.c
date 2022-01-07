
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hts221_hw {TYPE_1__* sensors; } ;
typedef int s64 ;
typedef long long s32 ;
typedef enum iio_chan_type { ____Placeholder_iio_chan_type } iio_chan_type ;
struct TYPE_2__ {long long b_gen; long long slope; } ;


 int EINVAL ;
 size_t HTS221_SENSOR_H ;
 size_t HTS221_SENSOR_T ;


 int IIO_VAL_INT_PLUS_NANO ;
 int div_s64 (long long,long long) ;
 int div_s64_rem (int,long long,long long*) ;

__attribute__((used)) static int hts221_get_sensor_offset(struct hts221_hw *hw,
        enum iio_chan_type ch_type,
        int *val, int *val2)
{
 s64 tmp;
 s32 rem, div, data;

 switch (ch_type) {
 case 129:
  data = hw->sensors[HTS221_SENSOR_H].b_gen;
  div = hw->sensors[HTS221_SENSOR_H].slope;
  break;
 case 128:
  data = hw->sensors[HTS221_SENSOR_T].b_gen;
  div = hw->sensors[HTS221_SENSOR_T].slope;
  break;
 default:
  return -EINVAL;
 }

 tmp = div_s64(data * 1000000000LL, div);
 tmp = div_s64_rem(tmp, 1000000000LL, &rem);

 *val = tmp;
 *val2 = rem;

 return IIO_VAL_INT_PLUS_NANO;
}
