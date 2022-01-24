#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ type; } ;
struct serio {struct serio* parent; TYPE_1__ id; } ;
struct TYPE_6__ {TYPE_2__* serio; } ;
struct psmouse {int /*<<< orphan*/  (* pt_deactivate ) (struct psmouse*) ;TYPE_3__ ps2dev; int /*<<< orphan*/  (* cleanup ) (struct psmouse*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  PSMOUSE_CMD_DISABLE ; 
 int /*<<< orphan*/  PSMOUSE_CMD_ENABLE ; 
 int /*<<< orphan*/  PSMOUSE_CMD_RESET_DIS ; 
 int /*<<< orphan*/  PSMOUSE_INITIALIZING ; 
 scalar_t__ SERIO_PS_PSTHRU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC4 (struct psmouse*) ; 
 int /*<<< orphan*/  psmouse_mutex ; 
 int /*<<< orphan*/  FUNC5 (struct psmouse*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct psmouse*,char*,int /*<<< orphan*/ ) ; 
 struct psmouse* FUNC7 (struct serio*) ; 
 int /*<<< orphan*/  FUNC8 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC9 (struct psmouse*) ; 

__attribute__((used)) static void FUNC10(struct serio *serio)
{
	struct psmouse *psmouse = FUNC7(serio);
	struct psmouse *parent = NULL;

	FUNC0(&psmouse_mutex);

	if (serio->parent && serio->id.type == SERIO_PS_PSTHRU) {
		parent = FUNC7(serio->parent);
		FUNC4(parent);
	}

	FUNC5(psmouse, PSMOUSE_INITIALIZING);

	/*
	 * Disable stream mode so cleanup routine can proceed undisturbed.
	 */
	if (FUNC2(&psmouse->ps2dev, NULL, PSMOUSE_CMD_DISABLE))
		FUNC6(psmouse, "Failed to disable mouse on %s\n",
			     psmouse->ps2dev.serio->phys);

	if (psmouse->cleanup)
		psmouse->cleanup(psmouse);

	/*
	 * Reset the mouse to defaults (bare PS/2 protocol).
	 */
	FUNC2(&psmouse->ps2dev, NULL, PSMOUSE_CMD_RESET_DIS);

	/*
	 * Some boxes, such as HP nx7400, get terribly confused if mouse
	 * is not fully enabled before suspending/shutting down.
	 */
	FUNC2(&psmouse->ps2dev, NULL, PSMOUSE_CMD_ENABLE);

	if (parent) {
		if (parent->pt_deactivate)
			parent->pt_deactivate(parent);

		FUNC3(parent);
	}

	FUNC1(&psmouse_mutex);
}