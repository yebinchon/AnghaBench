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
struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PSMOUSE_CMD_ENABLE ; 
 int /*<<< orphan*/  PSMOUSE_CMD_GETID ; 
 int /*<<< orphan*/  PSMOUSE_CMD_SETRATE ; 
 scalar_t__ FUNC0 (struct psmouse*) ; 
 scalar_t__ FUNC1 (struct psmouse*,int,int) ; 
 scalar_t__ FUNC2 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC3 (struct psmouse*) ; 
 scalar_t__ FUNC4 (struct ps2dev*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct psmouse*,char*) ; 

__attribute__((used)) static int FUNC6(struct psmouse *psmouse)
{
	struct ps2dev *ps2dev = &psmouse->ps2dev;
	unsigned char param[4];

	if (FUNC2(psmouse))
		goto error;

	if (FUNC0(psmouse)) {
		FUNC5(psmouse, "Failed to enter absolute mode\n");
		goto error;
	}

	if (FUNC1(psmouse, 0x0007, 0x8c))
		goto error;

	if (FUNC1(psmouse, 0x0149, 0x03))
		goto error;

	if (FUNC1(psmouse, 0x0160, 0x03))
		goto error;

	if (FUNC1(psmouse, 0x017f, 0x15))
		goto error;

	if (FUNC1(psmouse, 0x0151, 0x01))
		goto error;

	if (FUNC1(psmouse, 0x0168, 0x03))
		goto error;

	if (FUNC1(psmouse, 0x014a, 0x03))
		goto error;

	if (FUNC1(psmouse, 0x0161, 0x03))
		goto error;

	FUNC3(psmouse);

	/*
	 * This sequence changes the output from a 9-byte to an
	 * 8-byte format. All the same data seems to be present,
	 * just in a more compact format.
	 */
	param[0] = 0xc8;
	param[1] = 0x64;
	param[2] = 0x50;
	if (FUNC4(ps2dev, &param[0], PSMOUSE_CMD_SETRATE) ||
	    FUNC4(ps2dev, &param[1], PSMOUSE_CMD_SETRATE) ||
	    FUNC4(ps2dev, &param[2], PSMOUSE_CMD_SETRATE) ||
	    FUNC4(ps2dev, param, PSMOUSE_CMD_GETID))
		return -1;

	/* Set rate and enable data reporting */
	param[0] = 0x64;
	if (FUNC4(ps2dev, param, PSMOUSE_CMD_SETRATE) ||
	    FUNC4(ps2dev, NULL, PSMOUSE_CMD_ENABLE)) {
		FUNC5(psmouse, "Failed to enable data reporting\n");
		return -1;
	}

	return 0;

error:
	/*
	 * Leaving the touchpad in command mode will essentially render
	 * it unusable until the machine reboots, so exit it here just
	 * to be safe
	 */
	FUNC3(psmouse);
	return -1;
}