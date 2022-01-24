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
struct hid_sensor_hub_device {int dummy; } ;
struct hid_sensor_custom {int input_skip_sample; int /*<<< orphan*/  wait; scalar_t__ input_report_recd_size; int /*<<< orphan*/  misc_opened; } ;

/* Variables and functions */
 struct hid_sensor_custom* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct hid_sensor_hub_device *hsdev,
				 unsigned usage_id, void *priv)
{
	struct hid_sensor_custom *sensor_inst = FUNC0(priv);

	if (!FUNC1(0, &sensor_inst->misc_opened))
		return 0;

	sensor_inst->input_report_recd_size = 0;
	sensor_inst->input_skip_sample = false;

	FUNC2(&sensor_inst->wait);

	return 0;
}