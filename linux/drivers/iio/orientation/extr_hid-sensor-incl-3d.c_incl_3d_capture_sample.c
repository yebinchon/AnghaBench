
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct incl_3d_state {void** incl_val; } ;
struct iio_dev {int dummy; } ;
struct hid_sensor_hub_device {int dummy; } ;


 size_t CHANNEL_SCAN_INDEX_X ;
 size_t CHANNEL_SCAN_INDEX_Y ;
 size_t CHANNEL_SCAN_INDEX_Z ;
 int EINVAL ;



 struct incl_3d_state* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (void*) ;

__attribute__((used)) static int incl_3d_capture_sample(struct hid_sensor_hub_device *hsdev,
    unsigned usage_id,
    size_t raw_len, char *raw_data,
    void *priv)
{
 struct iio_dev *indio_dev = platform_get_drvdata(priv);
 struct incl_3d_state *incl_state = iio_priv(indio_dev);
 int ret = 0;

 switch (usage_id) {
 case 130:
  incl_state->incl_val[CHANNEL_SCAN_INDEX_X] = *(u32 *)raw_data;
 break;
 case 129:
  incl_state->incl_val[CHANNEL_SCAN_INDEX_Y] = *(u32 *)raw_data;
 break;
 case 128:
  incl_state->incl_val[CHANNEL_SCAN_INDEX_Z] = *(u32 *)raw_data;
 break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
