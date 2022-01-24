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
struct hidpp_device {int very_long_report_length; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int HIDPP_REPORT_LONG_LENGTH ; 
 int HIDPP_REPORT_SHORT_LENGTH ; 
 int HIDPP_REPORT_VERY_LONG_MAX_LENGTH ; 
 int REPORT_ID_HIDPP_LONG ; 
 int REPORT_ID_HIDPP_SHORT ; 
 int REPORT_ID_HIDPP_VERY_LONG ; 
 struct hidpp_device* FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*,int) ; 
 int FUNC2 (struct hid_device*,int) ; 

__attribute__((used)) static bool FUNC3(struct hid_device *hdev)
{
	struct hidpp_device *hidpp = FUNC0(hdev);
	int id, report_length, supported_reports = 0;

	id = REPORT_ID_HIDPP_SHORT;
	report_length = FUNC2(hdev, id);
	if (report_length) {
		if (report_length < HIDPP_REPORT_SHORT_LENGTH)
			goto bad_device;

		supported_reports++;
	}

	id = REPORT_ID_HIDPP_LONG;
	report_length = FUNC2(hdev, id);
	if (report_length) {
		if (report_length < HIDPP_REPORT_LONG_LENGTH)
			goto bad_device;

		supported_reports++;
	}

	id = REPORT_ID_HIDPP_VERY_LONG;
	report_length = FUNC2(hdev, id);
	if (report_length) {
		if (report_length < HIDPP_REPORT_LONG_LENGTH ||
		    report_length > HIDPP_REPORT_VERY_LONG_MAX_LENGTH)
			goto bad_device;

		supported_reports++;
		hidpp->very_long_report_length = report_length;
	}

	return supported_reports;

bad_device:
	FUNC1(hdev, "not enough values in hidpp report %d\n", id);
	return false;
}