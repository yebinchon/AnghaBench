
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iio_dev {int dummy; } ;
struct hid_sensor_hub_device {int dummy; } ;
struct gyro_3d_state {int * gyro_val; } ;


 int CHANNEL_SCAN_INDEX_X ;
 int EINVAL ;



 struct gyro_3d_state* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (void*) ;

__attribute__((used)) static int gyro_3d_capture_sample(struct hid_sensor_hub_device *hsdev,
    unsigned usage_id,
    size_t raw_len, char *raw_data,
    void *priv)
{
 struct iio_dev *indio_dev = platform_get_drvdata(priv);
 struct gyro_3d_state *gyro_state = iio_priv(indio_dev);
 int offset;
 int ret = -EINVAL;

 switch (usage_id) {
 case 130:
 case 129:
 case 128:
  offset = usage_id - 130;
  gyro_state->gyro_val[CHANNEL_SCAN_INDEX_X + offset] =
      *(u32 *)raw_data;
  ret = 0;
 break;
 default:
  break;
 }

 return ret;
}
