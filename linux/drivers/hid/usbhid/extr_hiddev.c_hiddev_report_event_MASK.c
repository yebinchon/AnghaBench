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
typedef  int /*<<< orphan*/  uref ;
struct hiddev_usage_ref {int /*<<< orphan*/  field_index; int /*<<< orphan*/  report_id; int /*<<< orphan*/  report_type; } ;
struct hid_report {unsigned int type; int /*<<< orphan*/  id; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 unsigned int HID_FEATURE_REPORT ; 
 int /*<<< orphan*/  HID_FIELD_INDEX_NONE ; 
 unsigned int HID_INPUT_REPORT ; 
 unsigned int HID_OUTPUT_REPORT ; 
 int /*<<< orphan*/  HID_REPORT_TYPE_FEATURE ; 
 int /*<<< orphan*/  HID_REPORT_TYPE_INPUT ; 
 int /*<<< orphan*/  HID_REPORT_TYPE_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (struct hid_device*,struct hiddev_usage_ref*) ; 
 int /*<<< orphan*/  FUNC1 (struct hiddev_usage_ref*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct hid_device *hid, struct hid_report *report)
{
	unsigned type = report->type;
	struct hiddev_usage_ref uref;

	FUNC1(&uref, 0, sizeof(uref));
	uref.report_type =
	  (type == HID_INPUT_REPORT) ? HID_REPORT_TYPE_INPUT :
	  ((type == HID_OUTPUT_REPORT) ? HID_REPORT_TYPE_OUTPUT :
	   ((type == HID_FEATURE_REPORT) ? HID_REPORT_TYPE_FEATURE : 0));
	uref.report_id = report->id;
	uref.field_index = HID_FIELD_INDEX_NONE;

	FUNC0(hid, &uref);
}