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
typedef  int u8 ;
struct hidpp_device {int very_long_report_length; int quirks; } ;
struct hid_report {int dummy; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int HIDPP_QUIRK_CLASS_M560 ; 
 int HIDPP_QUIRK_CLASS_WTP ; 
 int HIDPP_REPORT_LONG_LENGTH ; 
 int HIDPP_REPORT_SHORT_LENGTH ; 
#define  REPORT_ID_HIDPP_LONG 130 
#define  REPORT_ID_HIDPP_SHORT 129 
#define  REPORT_ID_HIDPP_VERY_LONG 128 
 int /*<<< orphan*/  FUNC0 (struct hid_device*,char*,int) ; 
 struct hidpp_device* FUNC1 (struct hid_device*) ; 
 int FUNC2 (struct hidpp_device*,int*,int) ; 
 int FUNC3 (struct hid_device*,int*,int) ; 
 int FUNC4 (struct hid_device*,int*,int) ; 

__attribute__((used)) static int FUNC5(struct hid_device *hdev, struct hid_report *report,
		u8 *data, int size)
{
	struct hidpp_device *hidpp = FUNC1(hdev);
	int ret = 0;

	if (!hidpp)
		return 0;

	/* Generic HID++ processing. */
	switch (data[0]) {
	case REPORT_ID_HIDPP_VERY_LONG:
		if (size != hidpp->very_long_report_length) {
			FUNC0(hdev, "received hid++ report of bad size (%d)",
				size);
			return 1;
		}
		ret = FUNC2(hidpp, data, size);
		break;
	case REPORT_ID_HIDPP_LONG:
		if (size != HIDPP_REPORT_LONG_LENGTH) {
			FUNC0(hdev, "received hid++ report of bad size (%d)",
				size);
			return 1;
		}
		ret = FUNC2(hidpp, data, size);
		break;
	case REPORT_ID_HIDPP_SHORT:
		if (size != HIDPP_REPORT_SHORT_LENGTH) {
			FUNC0(hdev, "received hid++ report of bad size (%d)",
				size);
			return 1;
		}
		ret = FUNC2(hidpp, data, size);
		break;
	}

	/* If no report is available for further processing, skip calling
	 * raw_event of subclasses. */
	if (ret != 0)
		return ret;

	if (hidpp->quirks & HIDPP_QUIRK_CLASS_WTP)
		return FUNC4(hdev, data, size);
	else if (hidpp->quirks & HIDPP_QUIRK_CLASS_M560)
		return FUNC3(hdev, data, size);

	return 0;
}