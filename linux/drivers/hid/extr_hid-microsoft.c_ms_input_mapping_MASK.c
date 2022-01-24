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
struct ms_data {unsigned long quirks; } ;
struct hid_usage {int dummy; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 unsigned long MS_ERGONOMY ; 
 unsigned long MS_PRESENTER ; 
 unsigned long MS_SURFACE_DIAL ; 
 struct ms_data* FUNC0 (struct hid_device*) ; 
 int FUNC1 (struct hid_input*,struct hid_usage*,unsigned long**,int*) ; 
 scalar_t__ FUNC2 (struct hid_input*,struct hid_usage*,unsigned long**,int*) ; 
 int FUNC3 (struct hid_input*,struct hid_field*,struct hid_usage*,unsigned long**,int*) ; 

__attribute__((used)) static int FUNC4(struct hid_device *hdev, struct hid_input *hi,
		struct hid_field *field, struct hid_usage *usage,
		unsigned long **bit, int *max)
{
	struct ms_data *ms = FUNC0(hdev);
	unsigned long quirks = ms->quirks;

	if (quirks & MS_ERGONOMY) {
		int ret = FUNC1(hi, usage, bit, max);
		if (ret)
			return ret;
	}

	if ((quirks & MS_PRESENTER) &&
			FUNC2(hi, usage, bit, max))
		return 1;

	if (quirks & MS_SURFACE_DIAL) {
		int ret = FUNC3(hi, field, usage, bit, max);

		if (ret)
			return ret;
	}

	return 0;
}