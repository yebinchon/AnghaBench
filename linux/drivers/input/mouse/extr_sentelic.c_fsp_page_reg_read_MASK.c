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
 int /*<<< orphan*/  FSP_CMD_TIMEOUT ; 
 int /*<<< orphan*/  FSP_CMD_TIMEOUT2 ; 
 int /*<<< orphan*/  PSMOUSE_CMD_GETINFO ; 
 scalar_t__ FUNC0 (struct ps2dev*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ps2dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct ps2dev*) ; 
 scalar_t__ FUNC3 (struct ps2dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC5 (struct psmouse*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct psmouse*) ; 

__attribute__((used)) static int FUNC7(struct psmouse *psmouse, int *reg_val)
{
	struct ps2dev *ps2dev = &psmouse->ps2dev;
	unsigned char param[3];
	int rc = -1;

	FUNC6(psmouse);

	FUNC1(ps2dev);

	if (FUNC3(ps2dev, 0xf3, FSP_CMD_TIMEOUT) < 0)
		goto out;

	FUNC3(ps2dev, 0x66, FSP_CMD_TIMEOUT2);
	FUNC3(ps2dev, 0x88, FSP_CMD_TIMEOUT2);

	if (FUNC3(ps2dev, 0xf3, FSP_CMD_TIMEOUT) < 0)
		goto out;

	FUNC3(ps2dev, 0x83, FSP_CMD_TIMEOUT2);
	FUNC3(ps2dev, 0x88, FSP_CMD_TIMEOUT2);

	/* get the returned result */
	if (FUNC0(ps2dev, param, PSMOUSE_CMD_GETINFO))
		goto out;

	*reg_val = param[2];
	rc = 0;

 out:
	FUNC2(ps2dev);
	FUNC4(psmouse);
	FUNC5(psmouse,
		    "READ PAGE REG: 0x%02x (rc = %d)\n",
		    *reg_val, rc);
	return rc;
}