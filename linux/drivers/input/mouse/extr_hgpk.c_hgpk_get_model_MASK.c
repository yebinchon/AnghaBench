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
typedef  enum hgpk_model_t { ____Placeholder_hgpk_model_t } hgpk_model_t ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  PSMOUSE_CMD_GETINFO ; 
 int /*<<< orphan*/  PSMOUSE_CMD_SETSCALE21 ; 
 scalar_t__ FUNC0 (struct ps2dev*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct psmouse*,char*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (struct psmouse*,char*,unsigned char) ; 

__attribute__((used)) static enum hgpk_model_t FUNC3(struct psmouse *psmouse)
{
	struct ps2dev *ps2dev = &psmouse->ps2dev;
	unsigned char param[3];

	/* E7, E7, E7, E9 gets us a 3 byte identifier */
	if (FUNC0(ps2dev,  NULL, PSMOUSE_CMD_SETSCALE21) ||
	    FUNC0(ps2dev,  NULL, PSMOUSE_CMD_SETSCALE21) ||
	    FUNC0(ps2dev,  NULL, PSMOUSE_CMD_SETSCALE21) ||
	    FUNC0(ps2dev, param, PSMOUSE_CMD_GETINFO)) {
		return -EIO;
	}

	FUNC1(psmouse, "ID: %*ph\n", 3, param);

	/* HGPK signature: 0x67, 0x00, 0x<model> */
	if (param[0] != 0x67 || param[1] != 0x00)
		return -ENODEV;

	FUNC2(psmouse, "OLPC touchpad revision 0x%x\n", param[2]);

	return param[2];
}