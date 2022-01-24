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
struct iio_dev {int /*<<< orphan*/  dev; } ;
struct hid_sensor_hub_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  data_ready; } ;
struct accel_3d_state {scalar_t__ timestamp; int /*<<< orphan*/  accel_val; TYPE_1__ common_attributes; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 scalar_t__ FUNC3 (struct iio_dev*) ; 
 struct accel_3d_state* FUNC4 (struct iio_dev*) ; 
 struct iio_dev* FUNC5 (void*) ; 

__attribute__((used)) static int FUNC6(struct hid_sensor_hub_device *hsdev,
				unsigned usage_id,
				void *priv)
{
	struct iio_dev *indio_dev = FUNC5(priv);
	struct accel_3d_state *accel_state = FUNC4(indio_dev);

	FUNC1(&indio_dev->dev, "accel_3d_proc_event\n");
	if (FUNC0(&accel_state->common_attributes.data_ready)) {
		if (!accel_state->timestamp)
			accel_state->timestamp = FUNC3(indio_dev);

		FUNC2(indio_dev,
				     accel_state->accel_val,
				     sizeof(accel_state->accel_val),
				     accel_state->timestamp);

		accel_state->timestamp = 0;
	}

	return 0;
}