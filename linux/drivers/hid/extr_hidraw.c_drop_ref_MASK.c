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
struct hidraw {size_t minor; int /*<<< orphan*/  hid; scalar_t__ exist; scalar_t__ open; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  PM_HINT_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hidraw_class ; 
 int /*<<< orphan*/  hidraw_major ; 
 int /*<<< orphan*/ ** hidraw_table ; 
 int /*<<< orphan*/  FUNC4 (struct hidraw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct hidraw *hidraw, int exists_bit)
{
	if (exists_bit) {
		hidraw->exist = 0;
		if (hidraw->open) {
			FUNC2(hidraw->hid);
			FUNC5(&hidraw->wait);
		}
		FUNC1(hidraw_class,
			       FUNC0(hidraw_major, hidraw->minor));
	} else {
		--hidraw->open;
	}
	if (!hidraw->open) {
		if (!hidraw->exist) {
			hidraw_table[hidraw->minor] = NULL;
			FUNC4(hidraw);
		} else {
			/* close device for last reader */
			FUNC2(hidraw->hid);
			FUNC3(hidraw->hid, PM_HINT_NORMAL);
		}
	}
}