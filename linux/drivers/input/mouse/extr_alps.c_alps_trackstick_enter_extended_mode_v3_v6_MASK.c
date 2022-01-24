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
struct psmouse {int /*<<< orphan*/  ps2dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PSMOUSE_CMD_SETRATE ; 
 int /*<<< orphan*/  PSMOUSE_CMD_SETSCALE11 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct psmouse *psmouse)
{
	unsigned char param[2] = {0xC8, 0x14};

	if (FUNC0(&psmouse->ps2dev, NULL, PSMOUSE_CMD_SETSCALE11) ||
	    FUNC0(&psmouse->ps2dev, NULL, PSMOUSE_CMD_SETSCALE11) ||
	    FUNC0(&psmouse->ps2dev, NULL, PSMOUSE_CMD_SETSCALE11) ||
	    FUNC0(&psmouse->ps2dev, &param[0], PSMOUSE_CMD_SETRATE) ||
	    FUNC0(&psmouse->ps2dev, &param[1], PSMOUSE_CMD_SETRATE))
		return -1;

	return 0;
}