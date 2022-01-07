
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct press_state {int common_attributes; } ;
struct TYPE_2__ {struct hid_sensor_hub_device* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct iio_dev {int channels; } ;
struct hid_sensor_hub_device {int dummy; } ;


 int HID_USAGE_SENSOR_PRESSURE ;
 int hid_sensor_remove_trigger (int *) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct press_state* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int kfree (int ) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;
 int sensor_hub_remove_callback (struct hid_sensor_hub_device*,int ) ;

__attribute__((used)) static int hid_press_remove(struct platform_device *pdev)
{
 struct hid_sensor_hub_device *hsdev = pdev->dev.platform_data;
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 struct press_state *press_state = iio_priv(indio_dev);

 sensor_hub_remove_callback(hsdev, HID_USAGE_SENSOR_PRESSURE);
 iio_device_unregister(indio_dev);
 hid_sensor_remove_trigger(&press_state->common_attributes);
 iio_triggered_buffer_cleanup(indio_dev);
 kfree(indio_dev->channels);

 return 0;
}
