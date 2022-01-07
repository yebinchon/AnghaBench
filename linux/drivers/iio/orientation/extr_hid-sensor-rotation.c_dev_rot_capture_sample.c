
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dev; } ;
struct hid_sensor_hub_device {int dummy; } ;
struct dev_rot_state {int sampled_vals; } ;


 unsigned int HID_USAGE_SENSOR_ORIENT_QUATERNION ;
 int dev_dbg (int *,char*,size_t,int) ;
 struct dev_rot_state* iio_priv (struct iio_dev*) ;
 int memcpy (int ,char*,int) ;
 struct iio_dev* platform_get_drvdata (void*) ;

__attribute__((used)) static int dev_rot_capture_sample(struct hid_sensor_hub_device *hsdev,
    unsigned usage_id,
    size_t raw_len, char *raw_data,
    void *priv)
{
 struct iio_dev *indio_dev = platform_get_drvdata(priv);
 struct dev_rot_state *rot_state = iio_priv(indio_dev);

 if (usage_id == HID_USAGE_SENSOR_ORIENT_QUATERNION) {
  memcpy(rot_state->sampled_vals, raw_data,
     sizeof(rot_state->sampled_vals));
  dev_dbg(&indio_dev->dev, "Recd Quat len:%zu::%zu\n", raw_len,
     sizeof(rot_state->sampled_vals));
 }

 return 0;
}
