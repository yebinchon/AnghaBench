#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct hid_sensor_hub_device* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct magn_3d_state {int /*<<< orphan*/  magn_flux_attributes; } ;
struct iio_dev {int dummy; } ;
struct hid_sensor_hub_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_USAGE_SENSOR_COMPASS_3D ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct magn_3d_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 struct iio_dev* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct hid_sensor_hub_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct hid_sensor_hub_device *hsdev = pdev->dev.platform_data;
	struct iio_dev *indio_dev = FUNC4(pdev);
	struct magn_3d_state *magn_state = FUNC2(indio_dev);

	FUNC5(hsdev, HID_USAGE_SENSOR_COMPASS_3D);
	FUNC1(indio_dev);
	FUNC0(&magn_state->magn_flux_attributes);
	FUNC3(indio_dev);

	return 0;
}