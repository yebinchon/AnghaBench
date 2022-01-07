
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temperature_state {int common_attributes; } ;
struct platform_device {int dev; } ;
struct iio_dev {int dummy; } ;
struct hid_sensor_hub_device {int dummy; } ;


 int HID_USAGE_SENSOR_TEMPERATURE ;
 struct hid_sensor_hub_device* dev_get_platdata (int *) ;
 int hid_sensor_remove_trigger (int *) ;
 struct temperature_state* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;
 int sensor_hub_remove_callback (struct hid_sensor_hub_device*,int ) ;

__attribute__((used)) static int hid_temperature_remove(struct platform_device *pdev)
{
 struct hid_sensor_hub_device *hsdev = dev_get_platdata(&pdev->dev);
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 struct temperature_state *temp_st = iio_priv(indio_dev);

 sensor_hub_remove_callback(hsdev, HID_USAGE_SENSOR_TEMPERATURE);
 hid_sensor_remove_trigger(&temp_st->common_attributes);

 return 0;
}
