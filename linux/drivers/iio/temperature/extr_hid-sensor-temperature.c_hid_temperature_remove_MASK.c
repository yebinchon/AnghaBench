#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct temperature_state {int /*<<< orphan*/  common_attributes; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct iio_dev {int dummy; } ;
struct hid_sensor_hub_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_USAGE_SENSOR_TEMPERATURE ; 
 struct hid_sensor_hub_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct temperature_state* FUNC2 (struct iio_dev*) ; 
 struct iio_dev* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_sensor_hub_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct hid_sensor_hub_device *hsdev = FUNC0(&pdev->dev);
	struct iio_dev *indio_dev = FUNC3(pdev);
	struct temperature_state *temp_st = FUNC2(indio_dev);

	FUNC4(hsdev, HID_USAGE_SENSOR_TEMPERATURE);
	FUNC1(&temp_st->common_attributes);

	return 0;
}