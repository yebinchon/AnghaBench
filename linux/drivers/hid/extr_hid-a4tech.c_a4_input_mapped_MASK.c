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
struct hid_usage {scalar_t__ type; scalar_t__ code; int hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;
struct a4tech_sc {int quirks; } ;

/* Variables and functions */
 int A4_2WHEEL_MOUSE_HACK_7 ; 
 scalar_t__ EV_REL ; 
 int /*<<< orphan*/  REL_HWHEEL ; 
 int /*<<< orphan*/  REL_HWHEEL_HI_RES ; 
 scalar_t__ REL_WHEEL_HI_RES ; 
 struct a4tech_sc* FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int FUNC2(struct hid_device *hdev, struct hid_input *hi,
		struct hid_field *field, struct hid_usage *usage,
		unsigned long **bit, int *max)
{
	struct a4tech_sc *a4 = FUNC0(hdev);

	if (usage->type == EV_REL && usage->code == REL_WHEEL_HI_RES) {
		FUNC1(REL_HWHEEL, *bit);
		FUNC1(REL_HWHEEL_HI_RES, *bit);
	}

	if ((a4->quirks & A4_2WHEEL_MOUSE_HACK_7) && usage->hid == 0x00090007)
		return -1;

	return 0;
}