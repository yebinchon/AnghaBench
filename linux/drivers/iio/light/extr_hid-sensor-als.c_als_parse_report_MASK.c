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
struct hid_sensor_hub_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ index; int /*<<< orphan*/  report_id; int /*<<< orphan*/  size; } ;
struct TYPE_4__ {TYPE_2__ sensitivity; } ;
struct als_state {TYPE_1__ common_attributes; int /*<<< orphan*/  scale_post_decml; int /*<<< orphan*/  scale_pre_decml; TYPE_2__ als_illum; int /*<<< orphan*/  scale_precision; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHANNEL_SCAN_INDEX_ILLUM ; 
 int /*<<< orphan*/  CHANNEL_SCAN_INDEX_INTENSITY ; 
 int /*<<< orphan*/  HID_FEATURE_REPORT ; 
 int /*<<< orphan*/  HID_INPUT_REPORT ; 
 int /*<<< orphan*/  HID_USAGE_SENSOR_ALS ; 
 int HID_USAGE_SENSOR_DATA_LIGHT ; 
 int HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS ; 
 int HID_USAGE_SENSOR_LIGHT_ILLUM ; 
 int /*<<< orphan*/  FUNC0 (struct iio_chan_spec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct hid_sensor_hub_device*,int /*<<< orphan*/ ,unsigned int,int,TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev,
				struct hid_sensor_hub_device *hsdev,
				struct iio_chan_spec *channels,
				unsigned usage_id,
				struct als_state *st)
{
	int ret;

	ret = FUNC3(hsdev, HID_INPUT_REPORT,
			usage_id,
			HID_USAGE_SENSOR_LIGHT_ILLUM,
			&st->als_illum);
	if (ret < 0)
		return ret;
	FUNC0(channels, CHANNEL_SCAN_INDEX_INTENSITY,
				    st->als_illum.size);
	FUNC0(channels, CHANNEL_SCAN_INDEX_ILLUM,
					st->als_illum.size);

	FUNC1(&pdev->dev, "als %x:%x\n", st->als_illum.index,
			st->als_illum.report_id);

	st->scale_precision = FUNC2(
				HID_USAGE_SENSOR_ALS,
				&st->als_illum,
				&st->scale_pre_decml, &st->scale_post_decml);

	/* Set Sensitivity field ids, when there is no individual modifier */
	if (st->common_attributes.sensitivity.index < 0) {
		FUNC3(hsdev,
			HID_FEATURE_REPORT, usage_id,
			HID_USAGE_SENSOR_DATA_MOD_CHANGE_SENSITIVITY_ABS |
			HID_USAGE_SENSOR_DATA_LIGHT,
			&st->common_attributes.sensitivity);
		FUNC1(&pdev->dev, "Sensitivity index:report %d:%d\n",
			st->common_attributes.sensitivity.index,
			st->common_attributes.sensitivity.report_id);
	}
	return ret;
}