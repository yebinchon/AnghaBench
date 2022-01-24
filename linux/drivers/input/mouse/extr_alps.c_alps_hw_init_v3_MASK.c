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
struct psmouse {struct ps2dev ps2dev; struct alps_data* private; } ;
struct alps_data {int flags; } ;

/* Variables and functions */
 int ALPS_DUALPOINT ; 
 int /*<<< orphan*/  ALPS_REG_BASE_PINNACLE ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  PSMOUSE_CMD_ENABLE ; 
 int /*<<< orphan*/  PSMOUSE_CMD_SETRATE ; 
 scalar_t__ FUNC0 (struct psmouse*,int) ; 
 scalar_t__ FUNC1 (struct psmouse*) ; 
 int FUNC2 (struct psmouse*,int) ; 
 scalar_t__ FUNC3 (struct psmouse*,int,int) ; 
 scalar_t__ FUNC4 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC5 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC6 (struct psmouse*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct ps2dev*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct psmouse*,char*) ; 

__attribute__((used)) static int FUNC9(struct psmouse *psmouse)
{
	struct alps_data *priv = psmouse->private;
	struct ps2dev *ps2dev = &psmouse->ps2dev;
	int reg_val;
	unsigned char param[4];

	if ((priv->flags & ALPS_DUALPOINT) &&
	    FUNC6(psmouse, ALPS_REG_BASE_PINNACLE) == -EIO)
		goto error;

	if (FUNC4(psmouse) ||
	    FUNC1(psmouse)) {
		FUNC8(psmouse, "Failed to enter absolute mode\n");
		goto error;
	}

	reg_val = FUNC2(psmouse, 0x0006);
	if (reg_val == -1)
		goto error;
	if (FUNC0(psmouse, reg_val | 0x01))
		goto error;

	reg_val = FUNC2(psmouse, 0x0007);
	if (reg_val == -1)
		goto error;
	if (FUNC0(psmouse, reg_val | 0x01))
		goto error;

	if (FUNC2(psmouse, 0x0144) == -1)
		goto error;
	if (FUNC0(psmouse, 0x04))
		goto error;

	if (FUNC2(psmouse, 0x0159) == -1)
		goto error;
	if (FUNC0(psmouse, 0x03))
		goto error;

	if (FUNC2(psmouse, 0x0163) == -1)
		goto error;
	if (FUNC3(psmouse, 0x0163, 0x03))
		goto error;

	if (FUNC2(psmouse, 0x0162) == -1)
		goto error;
	if (FUNC3(psmouse, 0x0162, 0x04))
		goto error;

	FUNC5(psmouse);

	/* Set rate and enable data reporting */
	param[0] = 0x64;
	if (FUNC7(ps2dev, param, PSMOUSE_CMD_SETRATE) ||
	    FUNC7(ps2dev, NULL, PSMOUSE_CMD_ENABLE)) {
		FUNC8(psmouse, "Failed to enable data reporting\n");
		return -1;
	}

	return 0;

error:
	/*
	 * Leaving the touchpad in command mode will essentially render
	 * it unusable until the machine reboots, so exit it here just
	 * to be safe
	 */
	FUNC5(psmouse);
	return -1;
}