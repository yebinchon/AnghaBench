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
struct input_dev {int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; } ;
struct hid_usage {int hid; } ;
struct hid_input {struct input_dev* input; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_REL ; 
 int /*<<< orphan*/  EV_REP ; 
 int HID_UP_CONSUMER ; 
 int HID_UP_MSVENDOR ; 
 int HID_USAGE ; 
 int HID_USAGE_PAGE ; 
 int /*<<< orphan*/  KEY_CHAT ; 
 int /*<<< orphan*/  KEY_F13 ; 
 int /*<<< orphan*/  KEY_F14 ; 
 int /*<<< orphan*/  KEY_F15 ; 
 int /*<<< orphan*/  KEY_F16 ; 
 int /*<<< orphan*/  KEY_F17 ; 
 int /*<<< orphan*/  KEY_F18 ; 
 int /*<<< orphan*/  KEY_KPEQUAL ; 
 int /*<<< orphan*/  KEY_KPLEFTPAREN ; 
 int /*<<< orphan*/  KEY_KPRIGHTPAREN ; 
 int /*<<< orphan*/  KEY_PHONE ; 
 int /*<<< orphan*/  KEY_PROG1 ; 
 int /*<<< orphan*/  KEY_PROG2 ; 
 int /*<<< orphan*/  REL_WHEEL ; 
 int /*<<< orphan*/  FUNC0 (struct hid_input*,struct hid_usage*,unsigned long**,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hid_input *hi, struct hid_usage *usage,
		unsigned long **bit, int *max)
{
	struct input_dev *input = hi->input;

	if ((usage->hid & HID_USAGE_PAGE) == HID_UP_CONSUMER) {
		switch (usage->hid & HID_USAGE) {
		/*
		 * Microsoft uses these 2 reserved usage ids for 2 keys on
		 * the MS office kb labelled "Office Home" and "Task Pane".
		 */
		case 0x29d:
			FUNC1(KEY_PROG1);
			return 1;
		case 0x29e:
			FUNC1(KEY_PROG2);
			return 1;
		}
		return 0;
	}

	if ((usage->hid & HID_USAGE_PAGE) != HID_UP_MSVENDOR)
		return 0;

	switch (usage->hid & HID_USAGE) {
	case 0xfd06: FUNC1(KEY_CHAT);	break;
	case 0xfd07: FUNC1(KEY_PHONE);	break;
	case 0xff00:
		/* Special keypad keys */
		FUNC1(KEY_KPEQUAL);
		FUNC2(KEY_KPLEFTPAREN, input->keybit);
		FUNC2(KEY_KPRIGHTPAREN, input->keybit);
		break;
	case 0xff01:
		/* Scroll wheel */
		FUNC0(hi, usage, bit, max, EV_REL, REL_WHEEL);
		break;
	case 0xff02:
		/*
		 * This byte contains a copy of the modifier keys byte of a
		 * standard hid keyboard report, as send by interface 0
		 * (this usage is found on interface 1).
		 *
		 * This byte only gets send when another key in the same report
		 * changes state, and as such is useless, ignore it.
		 */
		return -1;
	case 0xff05:
		FUNC2(EV_REP, input->evbit);
		FUNC1(KEY_F13);
		FUNC2(KEY_F14, input->keybit);
		FUNC2(KEY_F15, input->keybit);
		FUNC2(KEY_F16, input->keybit);
		FUNC2(KEY_F17, input->keybit);
		FUNC2(KEY_F18, input->keybit);
		break;
	default:
		return 0;
	}
	return 1;
}