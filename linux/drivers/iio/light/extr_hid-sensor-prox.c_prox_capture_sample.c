
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct prox_state {int human_presence; } ;
struct iio_dev {int dummy; } ;
struct hid_sensor_hub_device {int dummy; } ;


 int EINVAL ;

 struct prox_state* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (void*) ;

__attribute__((used)) static int prox_capture_sample(struct hid_sensor_hub_device *hsdev,
    unsigned usage_id,
    size_t raw_len, char *raw_data,
    void *priv)
{
 struct iio_dev *indio_dev = platform_get_drvdata(priv);
 struct prox_state *prox_state = iio_priv(indio_dev);
 int ret = -EINVAL;

 switch (usage_id) {
 case 128:
  prox_state->human_presence = *(u32 *)raw_data;
  ret = 0;
  break;
 default:
  break;
 }

 return ret;
}
