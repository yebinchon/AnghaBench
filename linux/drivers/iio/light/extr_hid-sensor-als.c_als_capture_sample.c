
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct iio_dev {int dummy; } ;
struct hid_sensor_hub_device {int dummy; } ;
struct als_state {void** illum; } ;


 size_t CHANNEL_SCAN_INDEX_ILLUM ;
 size_t CHANNEL_SCAN_INDEX_INTENSITY ;
 int EINVAL ;

 struct als_state* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (void*) ;

__attribute__((used)) static int als_capture_sample(struct hid_sensor_hub_device *hsdev,
    unsigned usage_id,
    size_t raw_len, char *raw_data,
    void *priv)
{
 struct iio_dev *indio_dev = platform_get_drvdata(priv);
 struct als_state *als_state = iio_priv(indio_dev);
 int ret = -EINVAL;
 u32 sample_data = *(u32 *)raw_data;

 switch (usage_id) {
 case 128:
  als_state->illum[CHANNEL_SCAN_INDEX_INTENSITY] = sample_data;
  als_state->illum[CHANNEL_SCAN_INDEX_ILLUM] = sample_data;
  ret = 0;
  break;
 default:
  break;
 }

 return ret;
}
