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
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct iio_dev {int /*<<< orphan*/  num_channels; int /*<<< orphan*/  channels; int /*<<< orphan*/ * info; } ;
struct cros_ec_sensors_core_state {scalar_t__ loc; int* sign; int /*<<< orphan*/  read_ec_sensors_data; TYPE_1__* ec; } ;
struct cros_ec_dev {int /*<<< orphan*/  ec_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * cmd_readmem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t CROS_EC_SENSOR_X ; 
 size_t CROS_EC_SENSOR_Z ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ MOTIONSENSE_LOC_LID ; 
 int /*<<< orphan*/  cros_ec_accel_legacy_channels ; 
 int /*<<< orphan*/  cros_ec_accel_legacy_info ; 
 int /*<<< orphan*/  cros_ec_accel_legacy_read_cmd ; 
 int /*<<< orphan*/  cros_ec_sensors_capture ; 
 int FUNC1 (struct platform_device*,struct iio_dev*,int) ; 
 int /*<<< orphan*/  cros_ec_sensors_read_lpc ; 
 struct cros_ec_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct iio_dev* FUNC4 (struct device*,int) ; 
 int FUNC5 (struct device*,struct iio_dev*) ; 
 int FUNC6 (struct device*,struct iio_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cros_ec_sensors_core_state* FUNC7 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct cros_ec_dev *ec = FUNC2(dev->parent);
	struct iio_dev *indio_dev;
	struct cros_ec_sensors_core_state *state;
	int ret;

	if (!ec || !ec->ec_dev) {
		FUNC3(&pdev->dev, "No EC device found.\n");
		return -EINVAL;
	}

	indio_dev = FUNC4(&pdev->dev, sizeof(*state));
	if (!indio_dev)
		return -ENOMEM;

	ret = FUNC1(pdev, indio_dev, true);
	if (ret)
		return ret;

	indio_dev->info = &cros_ec_accel_legacy_info;
	state = FUNC7(indio_dev);

	if (state->ec->cmd_readmem != NULL)
		state->read_ec_sensors_data = cros_ec_sensors_read_lpc;
	else
		state->read_ec_sensors_data = cros_ec_accel_legacy_read_cmd;

	indio_dev->channels = cros_ec_accel_legacy_channels;
	indio_dev->num_channels = FUNC0(cros_ec_accel_legacy_channels);
	/* The lid sensor needs to be presented inverted. */
	if (state->loc == MOTIONSENSE_LOC_LID) {
		state->sign[CROS_EC_SENSOR_X] = -1;
		state->sign[CROS_EC_SENSOR_Z] = -1;
	}

	ret = FUNC6(dev, indio_dev, NULL,
			cros_ec_sensors_capture, NULL);
	if (ret)
		return ret;

	return FUNC5(dev, indio_dev);
}