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
struct psmouse {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  PSMOUSE_CMD_SETSCALE21 ; 
 scalar_t__ FUNC1 (struct psmouse*,int) ; 
 int FUNC2 (struct psmouse*,int) ; 
 scalar_t__ FUNC3 (struct psmouse*) ; 
 scalar_t__ FUNC4 (struct psmouse*) ; 
 scalar_t__ FUNC5 (struct psmouse*,int,int) ; 
 scalar_t__ FUNC6 (struct psmouse*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__ FUNC7 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC8 (struct psmouse*,char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC9 (struct psmouse*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct psmouse*,char*) ; 

__attribute__((used)) static int FUNC11(struct psmouse *psmouse, int reg_base)
{
	int ret = 0;
	int reg_val;
	unsigned char param[4];

	/*
	 * We need to configure trackstick to report data for touchpad in
	 * extended format. And also we need to tell touchpad to expect data
	 * from trackstick in extended format. Without this configuration
	 * trackstick packets sent from touchpad are in basic format which is
	 * different from what we expect.
	 */

	if (FUNC5(psmouse, reg_base, true))
		return -EIO;

	/*
	 * E7 report for the trackstick
	 *
	 * There have been reports of failures to seem to trace back
	 * to the above trackstick check failing. When these occur
	 * this E7 report fails, so when that happens we continue
	 * with the assumption that there isn't a trackstick after
	 * all.
	 */
	if (FUNC6(psmouse, 0, PSMOUSE_CMD_SETSCALE21, param)) {
		FUNC10(psmouse, "Failed to initialize trackstick (E7 report failed)\n");
		ret = -ENODEV;
	} else {
		FUNC8(psmouse, "trackstick E7 report: %3ph\n", param);
		if (FUNC7(psmouse)) {
			FUNC9(psmouse, "Failed to enter into trackstick extended mode\n");
			ret = -EIO;
		}
	}

	if (FUNC5(psmouse, reg_base, false))
		return -EIO;

	if (ret)
		return ret;

	if (FUNC3(psmouse))
		return -EIO;

	reg_val = FUNC2(psmouse, reg_base + 0x08);
	if (reg_val == -1) {
		ret = -EIO;
	} else {
		/*
		 * Tell touchpad that trackstick is now in extended mode.
		 * If bit 1 isn't set the packet format is different.
		 */
		reg_val |= FUNC0(1);
		if (FUNC1(psmouse, reg_val))
			ret = -EIO;
	}

	if (FUNC4(psmouse))
		return -EIO;

	return ret;
}