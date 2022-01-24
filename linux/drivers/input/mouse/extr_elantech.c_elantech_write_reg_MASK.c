#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct psmouse {int /*<<< orphan*/  ps2dev; struct elantech_data* private; } ;
struct TYPE_2__ {int hw_version; } ;
struct elantech_data {TYPE_1__ info; } ;

/* Variables and functions */
 unsigned char ETP_PS2_CUSTOM_COMMAND ; 
 unsigned char ETP_REGISTER_READWRITE ; 
 unsigned char ETP_REGISTER_WRITE ; 
 unsigned char PSMOUSE_CMD_SETSCALE11 ; 
 int /*<<< orphan*/  FUNC0 (struct psmouse*,int /*<<< orphan*/ *,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct psmouse*,char*,unsigned char,unsigned char) ; 

__attribute__((used)) static int FUNC4(struct psmouse *psmouse, unsigned char reg,
				unsigned char val)
{
	struct elantech_data *etd = psmouse->private;
	int rc = 0;

	if (reg < 0x07 || reg > 0x26)
		return -1;

	if (reg > 0x11 && reg < 0x20)
		return -1;

	switch (etd->info.hw_version) {
	case 1:
		if (FUNC2(&psmouse->ps2dev, ETP_REGISTER_WRITE) ||
		    FUNC2(&psmouse->ps2dev, reg) ||
		    FUNC2(&psmouse->ps2dev, val) ||
		    FUNC1(&psmouse->ps2dev, NULL, PSMOUSE_CMD_SETSCALE11)) {
			rc = -1;
		}
		break;

	case 2:
		if (FUNC0(psmouse, NULL, ETP_PS2_CUSTOM_COMMAND) ||
		    FUNC0(psmouse, NULL, ETP_REGISTER_WRITE) ||
		    FUNC0(psmouse, NULL, ETP_PS2_CUSTOM_COMMAND) ||
		    FUNC0(psmouse, NULL, reg) ||
		    FUNC0(psmouse, NULL, ETP_PS2_CUSTOM_COMMAND) ||
		    FUNC0(psmouse, NULL, val) ||
		    FUNC0(psmouse, NULL, PSMOUSE_CMD_SETSCALE11)) {
			rc = -1;
		}
		break;

	case 3:
		if (FUNC0(psmouse, NULL, ETP_PS2_CUSTOM_COMMAND) ||
		    FUNC0(psmouse, NULL, ETP_REGISTER_READWRITE) ||
		    FUNC0(psmouse, NULL, ETP_PS2_CUSTOM_COMMAND) ||
		    FUNC0(psmouse, NULL, reg) ||
		    FUNC0(psmouse, NULL, ETP_PS2_CUSTOM_COMMAND) ||
		    FUNC0(psmouse, NULL, val) ||
		    FUNC0(psmouse, NULL, PSMOUSE_CMD_SETSCALE11)) {
			rc = -1;
		}
		break;

	case 4:
		if (FUNC0(psmouse, NULL, ETP_PS2_CUSTOM_COMMAND) ||
		    FUNC0(psmouse, NULL, ETP_REGISTER_READWRITE) ||
		    FUNC0(psmouse, NULL, ETP_PS2_CUSTOM_COMMAND) ||
		    FUNC0(psmouse, NULL, reg) ||
		    FUNC0(psmouse, NULL, ETP_PS2_CUSTOM_COMMAND) ||
		    FUNC0(psmouse, NULL, ETP_REGISTER_READWRITE) ||
		    FUNC0(psmouse, NULL, ETP_PS2_CUSTOM_COMMAND) ||
		    FUNC0(psmouse, NULL, val) ||
		    FUNC0(psmouse, NULL, PSMOUSE_CMD_SETSCALE11)) {
			rc = -1;
		}
		break;
	}

	if (rc)
		FUNC3(psmouse,
			    "failed to write register 0x%02x with value 0x%02x.\n",
			    reg, val);

	return rc;
}