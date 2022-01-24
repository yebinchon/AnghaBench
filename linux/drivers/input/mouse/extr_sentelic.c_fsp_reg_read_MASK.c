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
 unsigned char FUNC1 (int) ; 
 unsigned char FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ps2dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct ps2dev*) ; 
 scalar_t__ FUNC5 (struct ps2dev*,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC7 (struct psmouse*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct psmouse*) ; 

__attribute__((used)) static int FUNC9(struct psmouse *psmouse, int reg_addr, int *reg_val)
{
	struct ps2dev *ps2dev = &psmouse->ps2dev;
	unsigned char param[3];
	unsigned char addr;
	int rc = -1;

	/*
	 * We need to shut off the device and switch it into command
	 * mode so we don't confuse our protocol handler. We don't need
	 * to do that for writes because sysfs set helper does this for
	 * us.
	 */
	FUNC8(psmouse);

	FUNC3(ps2dev);

	if (FUNC5(ps2dev, 0xf3, FSP_CMD_TIMEOUT) < 0)
		goto out;

	/* should return 0xfe(request for resending) */
	FUNC5(ps2dev, 0x66, FSP_CMD_TIMEOUT2);
	/* should return 0xfc(failed) */
	FUNC5(ps2dev, 0x88, FSP_CMD_TIMEOUT2);

	if (FUNC5(ps2dev, 0xf3, FSP_CMD_TIMEOUT) < 0)
		goto out;

	if ((addr = FUNC1(reg_addr)) != reg_addr) {
		FUNC5(ps2dev, 0x68, FSP_CMD_TIMEOUT2);
	} else if ((addr = FUNC2(reg_addr)) != reg_addr) {
		/* swapping is required */
		FUNC5(ps2dev, 0xcc, FSP_CMD_TIMEOUT2);
		/* expect 0xfe */
	} else {
		/* swapping isn't necessary */
		FUNC5(ps2dev, 0x66, FSP_CMD_TIMEOUT2);
		/* expect 0xfe */
	}
	/* should return 0xfc(failed) */
	FUNC5(ps2dev, addr, FSP_CMD_TIMEOUT);

	if (FUNC0(ps2dev, param, PSMOUSE_CMD_GETINFO) < 0)
		goto out;

	*reg_val = param[2];
	rc = 0;

 out:
	FUNC4(ps2dev);
	FUNC6(psmouse);
	FUNC7(psmouse,
		    "READ REG: 0x%02x is 0x%02x (rc = %d)\n",
		    reg_addr, *reg_val, rc);
	return rc;
}