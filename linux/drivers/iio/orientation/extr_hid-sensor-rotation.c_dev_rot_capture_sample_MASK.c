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
struct iio_dev {int /*<<< orphan*/  dev; } ;
struct hid_sensor_hub_device {int dummy; } ;
struct dev_rot_state {int /*<<< orphan*/  sampled_vals; } ;

/* Variables and functions */
 unsigned int HID_USAGE_SENSOR_ORIENT_QUATERNION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t,int) ; 
 struct dev_rot_state* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct iio_dev* FUNC3 (void*) ; 

__attribute__((used)) static int FUNC4(struct hid_sensor_hub_device *hsdev,
				unsigned usage_id,
				size_t raw_len, char *raw_data,
				void *priv)
{
	struct iio_dev *indio_dev = FUNC3(priv);
	struct dev_rot_state *rot_state = FUNC1(indio_dev);

	if (usage_id == HID_USAGE_SENSOR_ORIENT_QUATERNION) {
		FUNC2(rot_state->sampled_vals, raw_data,
					sizeof(rot_state->sampled_vals));
		FUNC0(&indio_dev->dev, "Recd Quat len:%zu::%zu\n", raw_len,
					sizeof(rot_state->sampled_vals));
	}

	return 0;
}