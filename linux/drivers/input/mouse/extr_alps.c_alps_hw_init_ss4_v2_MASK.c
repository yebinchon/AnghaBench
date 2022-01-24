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
 int /*<<< orphan*/  PSMOUSE_CMD_SETRATE ; 
 int /*<<< orphan*/  PSMOUSE_CMD_SETSTREAM ; 
 scalar_t__ FUNC0 (struct psmouse*,int,int) ; 
 scalar_t__ FUNC1 (struct psmouse*) ; 
 scalar_t__ FUNC2 (struct psmouse*) ; 
 int FUNC3 (struct ps2dev*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct psmouse *psmouse)
{
	struct ps2dev *ps2dev = &psmouse->ps2dev;
	char param[2] = {0x64, 0x28};
	int ret = -1;

	/* enter absolute mode */
	if (FUNC3(ps2dev, NULL, PSMOUSE_CMD_SETSTREAM) ||
	    FUNC3(ps2dev, NULL, PSMOUSE_CMD_SETSTREAM) ||
	    FUNC3(ps2dev, &param[0], PSMOUSE_CMD_SETRATE) ||
	    FUNC3(ps2dev, &param[1], PSMOUSE_CMD_SETRATE)) {
		goto error;
	}

	/* T.B.D. Decread noise packet number, delete in the future */
	if (FUNC2(psmouse) ||
	    FUNC1(psmouse) ||
	    FUNC0(psmouse, 0x001D, 0x20)) {
		goto error;
	}
	FUNC2(psmouse);

	return FUNC3(ps2dev, NULL, PSMOUSE_CMD_ENABLE);

error:
	FUNC2(psmouse);
	return ret;
}