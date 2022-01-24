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
struct hidpp_touchpad_raw_xy {int finger_count; scalar_t__ end_of_frame; int /*<<< orphan*/  button; int /*<<< orphan*/ * fingers; } ;
struct hidpp_device {int quirks; int /*<<< orphan*/  input; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_LEFT ; 
 int /*<<< orphan*/  EV_KEY ; 
 int HIDPP_QUIRK_WTP_PHYSICAL_BUTTONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hidpp_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hidpp_device *hidpp,
		struct hidpp_touchpad_raw_xy *raw)
{
	int i;

	for (i = 0; i < 2; i++)
		FUNC3(hidpp, &(raw->fingers[i]));

	if (raw->end_of_frame &&
	    !(hidpp->quirks & HIDPP_QUIRK_WTP_PHYSICAL_BUTTONS))
		FUNC0(hidpp->input, EV_KEY, BTN_LEFT, raw->button);

	if (raw->end_of_frame || raw->finger_count <= 2) {
		FUNC1(hidpp->input);
		FUNC2(hidpp->input);
	}
}