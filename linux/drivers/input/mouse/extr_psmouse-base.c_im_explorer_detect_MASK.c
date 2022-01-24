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
typedef  int u8 ;
struct ps2dev {int dummy; } ;
struct psmouse {char* vendor; char* name; int pktsize; TYPE_1__* dev; struct ps2dev ps2dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  keybit; int /*<<< orphan*/  relbit; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_EXTRA ; 
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  BTN_SIDE ; 
 int ENODEV ; 
 int /*<<< orphan*/  PSMOUSE_CMD_GETID ; 
 int /*<<< orphan*/  PSMOUSE_CMD_SETRATE ; 
 int /*<<< orphan*/  REL_HWHEEL ; 
 int /*<<< orphan*/  REL_WHEEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct psmouse*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ps2dev*,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct psmouse *psmouse, bool set_properties)
{
	struct ps2dev *ps2dev = &psmouse->ps2dev;
	u8 param[2];

	FUNC1(psmouse, 0);

	param[0] = 200;
	FUNC2(ps2dev, param, PSMOUSE_CMD_SETRATE);
	param[0] = 200;
	FUNC2(ps2dev, param, PSMOUSE_CMD_SETRATE);
	param[0] =  80;
	FUNC2(ps2dev, param, PSMOUSE_CMD_SETRATE);
	FUNC2(ps2dev, param, PSMOUSE_CMD_GETID);

	if (param[0] != 4)
		return -ENODEV;

	/* Magic to enable horizontal scrolling on IntelliMouse 4.0 */
	param[0] = 200;
	FUNC2(ps2dev, param, PSMOUSE_CMD_SETRATE);
	param[0] =  80;
	FUNC2(ps2dev, param, PSMOUSE_CMD_SETRATE);
	param[0] =  40;
	FUNC2(ps2dev, param, PSMOUSE_CMD_SETRATE);

	if (set_properties) {
		FUNC0(BTN_MIDDLE, psmouse->dev->keybit);
		FUNC0(REL_WHEEL, psmouse->dev->relbit);
		FUNC0(REL_HWHEEL, psmouse->dev->relbit);
		FUNC0(BTN_SIDE, psmouse->dev->keybit);
		FUNC0(BTN_EXTRA, psmouse->dev->keybit);

		if (!psmouse->vendor)
			psmouse->vendor = "Generic";
		if (!psmouse->name)
			psmouse->name = "Explorer Mouse";
		psmouse->pktsize = 4;
	}

	return 0;
}