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
struct mt_report_data {scalar_t__ is_mt_collection; } ;
struct mt_device {int dummy; } ;
struct hid_usage {int dummy; } ;
struct hid_input {int dummy; } ;
struct hid_field {int /*<<< orphan*/  report; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 struct mt_device* FUNC0 (struct hid_device*) ; 
 struct mt_report_data* FUNC1 (struct mt_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct hid_device *hdev, struct hid_input *hi,
		struct hid_field *field, struct hid_usage *usage,
		unsigned long **bit, int *max)
{
	struct mt_device *td = FUNC0(hdev);
	struct mt_report_data *rdata;

	rdata = FUNC1(td, field->report);
	if (rdata && rdata->is_mt_collection) {
		/* We own these mappings, tell hid-input to ignore them */
		return -1;
	}

	/* let hid-core decide for the others */
	return 0;
}