
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct magn_3d_state {int ** magn_val_addr; } ;
struct iio_dev {int dummy; } ;
struct hid_sensor_hub_device {int dummy; } ;


 int CHANNEL_SCAN_INDEX_NORTH_MAGN_TILT_COMP ;
 int CHANNEL_SCAN_INDEX_X ;
 int EINVAL ;







 struct magn_3d_state* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (void*) ;

__attribute__((used)) static int magn_3d_capture_sample(struct hid_sensor_hub_device *hsdev,
    unsigned usage_id,
    size_t raw_len, char *raw_data,
    void *priv)
{
 struct iio_dev *indio_dev = platform_get_drvdata(priv);
 struct magn_3d_state *magn_state = iio_priv(indio_dev);
 int offset;
 int ret = 0;
 u32 *iio_val = ((void*)0);

 switch (usage_id) {
 case 132:
 case 131:
 case 130:
  offset = (usage_id - 132)
    + CHANNEL_SCAN_INDEX_X;
 break;
 case 134:
 case 133:
 case 129:
 case 128:
  offset = (usage_id - 134)
    + CHANNEL_SCAN_INDEX_NORTH_MAGN_TILT_COMP;
 break;
 default:
  return -EINVAL;
 }

 iio_val = magn_state->magn_val_addr[offset];

 if (iio_val != ((void*)0))
  *iio_val = *((u32 *)raw_data);
 else
  ret = -EINVAL;

 return ret;
}
