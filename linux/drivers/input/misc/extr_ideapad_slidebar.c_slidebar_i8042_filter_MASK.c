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
struct serio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 unsigned char I8042_STR_AUXDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct serio*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  slidebar_input_dev ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static bool FUNC6(unsigned char data, unsigned char str,
				  struct serio *port)
{
	static bool extended = false;

	/* We are only interested in data coming form KBC port */
	if (str & I8042_STR_AUXDATA)
		return false;

	/* Scancodes: e03b on move, e0bb on release. */
	if (data == 0xe0) {
		extended = true;
		return true;
	}

	if (!extended)
		return false;

	extended = false;

	if (FUNC3((data & 0x7f) != 0x3b)) {
		FUNC4(port, 0xe0, 0);
		return false;
	}

	if (data & 0x80) {
		FUNC1(slidebar_input_dev, BTN_TOUCH, 0);
	} else {
		FUNC1(slidebar_input_dev, BTN_TOUCH, 1);
		FUNC0(slidebar_input_dev, ABS_X, FUNC5());
	}
	FUNC2(slidebar_input_dev);

	return true;
}