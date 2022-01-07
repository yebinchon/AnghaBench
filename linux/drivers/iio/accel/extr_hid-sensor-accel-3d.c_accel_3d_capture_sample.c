
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iio_dev {int dummy; } ;
struct hid_sensor_hub_device {int dummy; } ;
struct accel_3d_state {int common_attributes; int timestamp; int * accel_val; } ;
typedef int int64_t ;


 int CHANNEL_SCAN_INDEX_X ;
 int EINVAL ;




 int hid_sensor_convert_timestamp (int *,int ) ;
 struct accel_3d_state* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (void*) ;

__attribute__((used)) static int accel_3d_capture_sample(struct hid_sensor_hub_device *hsdev,
    unsigned usage_id,
    size_t raw_len, char *raw_data,
    void *priv)
{
 struct iio_dev *indio_dev = platform_get_drvdata(priv);
 struct accel_3d_state *accel_state = iio_priv(indio_dev);
 int offset;
 int ret = -EINVAL;

 switch (usage_id) {
 case 131:
 case 130:
 case 129:
  offset = usage_id - 131;
  accel_state->accel_val[CHANNEL_SCAN_INDEX_X + offset] =
      *(u32 *)raw_data;
  ret = 0;
 break;
 case 128:
  accel_state->timestamp =
   hid_sensor_convert_timestamp(
     &accel_state->common_attributes,
     *(int64_t *)raw_data);
 break;
 default:
  break;
 }

 return ret;
}
