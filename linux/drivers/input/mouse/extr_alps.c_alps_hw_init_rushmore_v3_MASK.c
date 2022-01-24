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
 int /*<<< orphan*/  ALPS_REG_BASE_RUSHMORE ; 
 int EIO ; 
 int /*<<< orphan*/  PSMOUSE_CMD_ENABLE ; 
 scalar_t__ FUNC0 (struct psmouse*,int) ; 
 int FUNC1 (struct psmouse*,int) ; 
 scalar_t__ FUNC2 (struct psmouse*,int,int) ; 
 scalar_t__ FUNC3 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC4 (struct psmouse*) ; 
 scalar_t__ FUNC5 (struct psmouse*,int) ; 
 int FUNC6 (struct psmouse*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ps2dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct psmouse *psmouse)
{
	struct alps_data *priv = psmouse->private;
	struct ps2dev *ps2dev = &psmouse->ps2dev;
	int reg_val, ret = -1;

	if (priv->flags & ALPS_DUALPOINT) {
		reg_val = FUNC6(psmouse,
						   ALPS_REG_BASE_RUSHMORE);
		if (reg_val == -EIO)
			goto error;
	}

	if (FUNC3(psmouse) ||
	    FUNC1(psmouse, 0xc2d9) == -1 ||
	    FUNC2(psmouse, 0xc2cb, 0x00))
		goto error;

	if (FUNC5(psmouse, 0xc2da))
		goto error;

	reg_val = FUNC1(psmouse, 0xc2c6);
	if (reg_val == -1)
		goto error;
	if (FUNC0(psmouse, reg_val & 0xfd))
		goto error;

	if (FUNC2(psmouse, 0xc2c9, 0x64))
		goto error;

	/* enter absolute mode */
	reg_val = FUNC1(psmouse, 0xc2c4);
	if (reg_val == -1)
		goto error;
	if (FUNC0(psmouse, reg_val | 0x02))
		goto error;

	FUNC4(psmouse);
	return FUNC7(ps2dev, NULL, PSMOUSE_CMD_ENABLE);

error:
	FUNC4(psmouse);
	return ret;
}