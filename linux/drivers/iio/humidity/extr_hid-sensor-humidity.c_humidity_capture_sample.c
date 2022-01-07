
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct hid_sensor_hub_device {int dummy; } ;
struct hid_humidity_state {int humidity_data; } ;
typedef int s32 ;


 int EINVAL ;

 struct hid_humidity_state* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (void*) ;

__attribute__((used)) static int humidity_capture_sample(struct hid_sensor_hub_device *hsdev,
    unsigned int usage_id, size_t raw_len,
    char *raw_data, void *pdev)
{
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 struct hid_humidity_state *humid_st = iio_priv(indio_dev);

 switch (usage_id) {
 case 128:
  humid_st->humidity_data = *(s32 *)raw_data;

  return 0;
 default:
  return -EINVAL;
 }
}
