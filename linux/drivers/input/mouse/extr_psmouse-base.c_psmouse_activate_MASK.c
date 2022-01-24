#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* serio; } ;
struct psmouse {TYPE_2__ ps2dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  PSMOUSE_ACTIVATED ; 
 int /*<<< orphan*/  PSMOUSE_CMD_ENABLE ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct psmouse*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct psmouse*,char*,int /*<<< orphan*/ ) ; 

int FUNC3(struct psmouse *psmouse)
{
	if (FUNC0(&psmouse->ps2dev, NULL, PSMOUSE_CMD_ENABLE)) {
		FUNC2(psmouse, "Failed to enable mouse on %s\n",
			     psmouse->ps2dev.serio->phys);
		return -1;
	}

	FUNC1(psmouse, PSMOUSE_ACTIVATED);
	return 0;
}