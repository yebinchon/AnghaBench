
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct iio_dev {int dummy; } ;
struct hid_sensor_hub_device {int dummy; } ;
struct hid_humidity_state {int common_attributes; } ;


 int HID_USAGE_SENSOR_HUMIDITY ;
 struct hid_sensor_hub_device* dev_get_platdata (int *) ;
 int hid_sensor_remove_trigger (int *) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct hid_humidity_state* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;
 int sensor_hub_remove_callback (struct hid_sensor_hub_device*,int ) ;

__attribute__((used)) static int hid_humidity_remove(struct platform_device *pdev)
{
 struct hid_sensor_hub_device *hsdev = dev_get_platdata(&pdev->dev);
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 struct hid_humidity_state *humid_st = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 sensor_hub_remove_callback(hsdev, HID_USAGE_SENSOR_HUMIDITY);
 hid_sensor_remove_trigger(&humid_st->common_attributes);

 return 0;
}
