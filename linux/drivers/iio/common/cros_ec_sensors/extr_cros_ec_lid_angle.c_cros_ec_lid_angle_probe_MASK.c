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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; } ;
struct TYPE_2__ {int /*<<< orphan*/  read_ec_sensors_data; } ;
struct cros_ec_lid_angle_state {TYPE_1__ core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  cros_ec_lid_angle_channels ; 
 int /*<<< orphan*/  cros_ec_lid_angle_info ; 
 int /*<<< orphan*/  cros_ec_sensors_capture ; 
 int FUNC1 (struct platform_device*,struct iio_dev*,int) ; 
 int /*<<< orphan*/  cros_ec_sensors_read_lid_angle ; 
 struct iio_dev* FUNC2 (struct device*,int) ; 
 int FUNC3 (struct device*,struct iio_dev*) ; 
 int FUNC4 (struct device*,struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cros_ec_lid_angle_state* FUNC5 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct iio_dev *indio_dev;
	struct cros_ec_lid_angle_state *state;
	int ret;

	indio_dev = FUNC2(dev, sizeof(*state));
	if (!indio_dev)
		return -ENOMEM;

	ret = FUNC1(pdev, indio_dev, false);
	if (ret)
		return ret;

	indio_dev->info = &cros_ec_lid_angle_info;
	state = FUNC5(indio_dev);
	indio_dev->channels = cros_ec_lid_angle_channels;
	indio_dev->num_channels = FUNC0(cros_ec_lid_angle_channels);

	state->core.read_ec_sensors_data = cros_ec_sensors_read_lid_angle;

	ret = FUNC4(dev, indio_dev, NULL,
			cros_ec_sensors_capture, NULL);
	if (ret)
		return ret;

	return FUNC3(dev, indio_dev);
}