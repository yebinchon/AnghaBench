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
typedef  int /*<<< orphan*/  u32 ;
struct hid_sensor_hub_device {int /*<<< orphan*/  hdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  report_id; int /*<<< orphan*/  index; } ;
struct hid_sensor_common {TYPE_1__ report_latency; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_FEATURE_REPORT ; 
 int /*<<< orphan*/  HID_USAGE_SENSOR_PROP_REPORT_LATENCY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_sensor_hub_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(struct hid_sensor_hub_device *hsdev,
					       u32 usage_id,
					       struct hid_sensor_common *st)
{
	FUNC1(hsdev, HID_FEATURE_REPORT,
					    usage_id,
					    HID_USAGE_SENSOR_PROP_REPORT_LATENCY,
					    &st->report_latency);

	FUNC0(hsdev->hdev, "Report latency attributes: %x:%x\n",
		st->report_latency.index, st->report_latency.report_id);
}