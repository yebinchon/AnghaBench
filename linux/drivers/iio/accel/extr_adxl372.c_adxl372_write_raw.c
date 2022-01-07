
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct adxl372_state {int bw; int inact_time_ms; int act_time_ms; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;


 int adxl372_bw_freq_tbl ;
 int adxl372_find_closest_match (int ,int ,int) ;
 int adxl372_samp_freq_tbl ;
 int adxl372_set_activity_time_ms (struct adxl372_state*,int ) ;
 int adxl372_set_bandwidth (struct adxl372_state*,int) ;
 int adxl372_set_inactivity_time_ms (struct adxl372_state*,int ) ;
 int adxl372_set_odr (struct adxl372_state*,int) ;
 struct adxl372_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int adxl372_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long info)
{
 struct adxl372_state *st = iio_priv(indio_dev);
 int odr_index, bw_index, ret;

 switch (info) {
 case 128:
  odr_index = adxl372_find_closest_match(adxl372_samp_freq_tbl,
     ARRAY_SIZE(adxl372_samp_freq_tbl),
     val);
  ret = adxl372_set_odr(st, odr_index);
  if (ret < 0)
   return ret;




  ret = adxl372_set_activity_time_ms(st, st->act_time_ms);
  if (ret < 0)
   return ret;




  ret = adxl372_set_inactivity_time_ms(st, st->inact_time_ms);
  if (ret < 0)
   return ret;




  if (st->bw > odr_index)
   ret = adxl372_set_bandwidth(st, odr_index);

  return ret;
 case 129:
  bw_index = adxl372_find_closest_match(adxl372_bw_freq_tbl,
     ARRAY_SIZE(adxl372_bw_freq_tbl),
     val);
  return adxl372_set_bandwidth(st, bw_index);
 default:
  return -EINVAL;
 }
}
