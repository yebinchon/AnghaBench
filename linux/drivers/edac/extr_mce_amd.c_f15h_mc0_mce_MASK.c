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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static bool FUNC4(u16 ec, u8 xec)
{
	bool ret = true;

	if (FUNC2(ec)) {

		switch (xec) {
		case 0x0:
			FUNC3("Data Array access error.\n");
			break;

		case 0x1:
			FUNC3("UC error during a linefill from L2/NB.\n");
			break;

		case 0x2:
		case 0x11:
			FUNC3("STQ access error.\n");
			break;

		case 0x3:
			FUNC3("SCB access error.\n");
			break;

		case 0x10:
			FUNC3("Tag error.\n");
			break;

		case 0x12:
			FUNC3("LDQ access error.\n");
			break;

		default:
			ret = false;
		}
	} else if (FUNC0(ec)) {

		if (!xec)
			FUNC3("System Read Data Error.\n");
		else
			FUNC3(" Internal error condition type %d.\n", xec);
	} else if (FUNC1(ec)) {
		if (xec <= 0x1f)
			FUNC3("Hardware Assert.\n");
		else
			ret = false;

	} else
		ret = false;

	return ret;
}