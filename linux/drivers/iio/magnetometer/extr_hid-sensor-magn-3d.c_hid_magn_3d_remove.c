
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct hid_sensor_hub_device* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct magn_3d_state {int magn_flux_attributes; } ;
struct iio_dev {int dummy; } ;
struct hid_sensor_hub_device {int dummy; } ;


 int HID_USAGE_SENSOR_COMPASS_3D ;
 int hid_sensor_remove_trigger (int *) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct magn_3d_state* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;
 int sensor_hub_remove_callback (struct hid_sensor_hub_device*,int ) ;

__attribute__((used)) static int hid_magn_3d_remove(struct platform_device *pdev)
{
 struct hid_sensor_hub_device *hsdev = pdev->dev.platform_data;
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 struct magn_3d_state *magn_state = iio_priv(indio_dev);

 sensor_hub_remove_callback(hsdev, HID_USAGE_SENSOR_COMPASS_3D);
 iio_device_unregister(indio_dev);
 hid_sensor_remove_trigger(&magn_state->magn_flux_attributes);
 iio_triggered_buffer_cleanup(indio_dev);

 return 0;
}
