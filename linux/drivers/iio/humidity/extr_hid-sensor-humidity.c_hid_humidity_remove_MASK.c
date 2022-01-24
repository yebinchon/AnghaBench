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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct iio_dev {int dummy; } ;
struct hid_sensor_hub_device {int dummy; } ;
struct hid_humidity_state {int /*<<< orphan*/  common_attributes; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_USAGE_SENSOR_HUMIDITY ; 
 struct hid_sensor_hub_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct hid_humidity_state* FUNC3 (struct iio_dev*) ; 
 struct iio_dev* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct hid_sensor_hub_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct hid_sensor_hub_device *hsdev = FUNC0(&pdev->dev);
	struct iio_dev *indio_dev = FUNC4(pdev);
	struct hid_humidity_state *humid_st = FUNC3(indio_dev);

	FUNC2(indio_dev);
	FUNC5(hsdev, HID_USAGE_SENSOR_HUMIDITY);
	FUNC1(&humid_st->common_attributes);

	return 0;
}