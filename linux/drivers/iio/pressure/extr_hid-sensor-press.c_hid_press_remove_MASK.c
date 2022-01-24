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
struct press_state {int /*<<< orphan*/  common_attributes; } ;
struct TYPE_2__ {struct hid_sensor_hub_device* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct iio_dev {int /*<<< orphan*/  channels; } ;
struct hid_sensor_hub_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_USAGE_SENSOR_PRESSURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct press_state* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct iio_dev* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct hid_sensor_hub_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct hid_sensor_hub_device *hsdev = pdev->dev.platform_data;
	struct iio_dev *indio_dev = FUNC5(pdev);
	struct press_state *press_state = FUNC2(indio_dev);

	FUNC6(hsdev, HID_USAGE_SENSOR_PRESSURE);
	FUNC1(indio_dev);
	FUNC0(&press_state->common_attributes);
	FUNC3(indio_dev);
	FUNC4(indio_dev->channels);

	return 0;
}