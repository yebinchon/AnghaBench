#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct iio_chan_spec {int dummy; } ;
struct hid_sensor_hub_device {int /*<<< orphan*/  usage; } ;
struct TYPE_5__ {int size; int /*<<< orphan*/  report_id; int /*<<< orphan*/  index; } ;
struct TYPE_4__ {TYPE_2__ sensitivity; } ;
struct dev_rot_state {TYPE_1__ common_attributes; int /*<<< orphan*/  scale_post_decml; int /*<<< orphan*/  scale_pre_decml; TYPE_2__ quaternion; int /*<<< orphan*/  scale_precision; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_FEATURE_REPORT ; 
 int /*<<< orphan*/  HID_INPUT_REPORT ; 
 int HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS ; 
 int HID_USAGE_SENSOR_DATA_ORIENTATION ; 
 int HID_USAGE_SENSOR_ORIENT_QUATERNION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_chan_spec*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct hid_sensor_hub_device*,int /*<<< orphan*/ ,unsigned int,int,TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev,
				struct hid_sensor_hub_device *hsdev,
				struct iio_chan_spec *channels,
				unsigned usage_id,
				struct dev_rot_state *st)
{
	int ret;

	ret = FUNC3(hsdev,
				HID_INPUT_REPORT,
				usage_id,
				HID_USAGE_SENSOR_ORIENT_QUATERNION,
				&st->quaternion);
	if (ret)
		return ret;

	FUNC1(&channels[0],
		st->quaternion.size / 4);

	FUNC0(&pdev->dev, "dev_rot %x:%x\n", st->quaternion.index,
		st->quaternion.report_id);

	FUNC0(&pdev->dev, "dev_rot: attrib size %d\n",
				st->quaternion.size);

	st->scale_precision = FUNC2(
				hsdev->usage,
				&st->quaternion,
				&st->scale_pre_decml, &st->scale_post_decml);

	/* Set Sensitivity field ids, when there is no individual modifier */
	if (st->common_attributes.sensitivity.index < 0) {
		FUNC3(hsdev,
			HID_FEATURE_REPORT, usage_id,
			HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS |
			HID_USAGE_SENSOR_DATA_ORIENTATION,
			&st->common_attributes.sensitivity);
		FUNC0(&pdev->dev, "Sensitivity index:report %d:%d\n",
			st->common_attributes.sensitivity.index,
			st->common_attributes.sensitivity.report_id);
	}

	return 0;
}