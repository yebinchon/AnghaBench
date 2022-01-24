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
struct hid_field {int /*<<< orphan*/  report; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_UP_LED ; 
 int /*<<< orphan*/  USB_DIR_OUT ; 
 int FUNC0 (struct hid_device*,int /*<<< orphan*/ ,int,struct hid_field**) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_field*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hid_device *hid)
{
	struct hid_field *field;
	int offset;

	if ((offset = FUNC0(hid, HID_UP_LED, 0x01, &field)) != -1) {
		FUNC1(field, offset, 0);
		FUNC2(hid, field->report, USB_DIR_OUT);
	}
}