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
 unsigned char FUNC0 (int) ; 
 unsigned char FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ps2dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct ps2dev*) ; 
 scalar_t__ FUNC4 (struct ps2dev*,unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct psmouse*,char*,int,int,int) ; 

__attribute__((used)) static int FUNC6(struct psmouse *psmouse, int reg_addr, int reg_val)
{
	struct ps2dev *ps2dev = &psmouse->ps2dev;
	unsigned char v;
	int rc = -1;

	FUNC2(ps2dev);

	if (FUNC4(ps2dev, 0xf3, FSP_CMD_TIMEOUT) < 0)
		goto out;

	if ((v = FUNC0(reg_addr)) != reg_addr) {
		/* inversion is required */
		FUNC4(ps2dev, 0x74, FSP_CMD_TIMEOUT2);
	} else {
		if ((v = FUNC1(reg_addr)) != reg_addr) {
			/* swapping is required */
			FUNC4(ps2dev, 0x77, FSP_CMD_TIMEOUT2);
		} else {
			/* swapping isn't necessary */
			FUNC4(ps2dev, 0x55, FSP_CMD_TIMEOUT2);
		}
	}
	/* write the register address in correct order */
	FUNC4(ps2dev, v, FSP_CMD_TIMEOUT2);

	if (FUNC4(ps2dev, 0xf3, FSP_CMD_TIMEOUT) < 0)
		goto out;

	if ((v = FUNC0(reg_val)) != reg_val) {
		/* inversion is required */
		FUNC4(ps2dev, 0x47, FSP_CMD_TIMEOUT2);
	} else if ((v = FUNC1(reg_val)) != reg_val) {
		/* swapping is required */
		FUNC4(ps2dev, 0x44, FSP_CMD_TIMEOUT2);
	} else {
		/* swapping isn't necessary */
		FUNC4(ps2dev, 0x33, FSP_CMD_TIMEOUT2);
	}

	/* write the register value in correct order */
	FUNC4(ps2dev, v, FSP_CMD_TIMEOUT2);
	rc = 0;

 out:
	FUNC3(ps2dev);
	FUNC5(psmouse,
		    "WRITE REG: 0x%02x to 0x%02x (rc = %d)\n",
		    reg_addr, reg_val, rc);
	return rc;
}