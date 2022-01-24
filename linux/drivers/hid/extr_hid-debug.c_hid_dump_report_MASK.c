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
struct hid_report_enum {scalar_t__ numbered; } ;
struct hid_device {struct hid_report_enum* report_enum; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ HID_DEBUG_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct hid_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,char*,int,...) ; 

void FUNC4(struct hid_device *hid, int type, u8 *data,
		int size)
{
	struct hid_report_enum *report_enum;
	char *buf;
	unsigned int i;

	buf = FUNC2(HID_DEBUG_BUFSIZE, GFP_ATOMIC);

	if (!buf)
		return;

	report_enum = hid->report_enum + type;

	/* dump the report */
	FUNC3(buf, HID_DEBUG_BUFSIZE - 1,
			"\nreport (size %u) (%snumbered) = ", size,
			report_enum->numbered ? "" : "un");
	FUNC0(hid, buf);

	for (i = 0; i < size; i++) {
		FUNC3(buf, HID_DEBUG_BUFSIZE - 1,
				" %02x", data[i]);
		FUNC0(hid, buf);
	}
	FUNC0(hid, "\n");
	FUNC1(buf);
}