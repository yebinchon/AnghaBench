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
struct psmouse {int /*<<< orphan*/  ps2dev; struct alps_data* private; } ;
struct alps_data {int flags; } ;

/* Variables and functions */
 int ALPS_PASS ; 
 int /*<<< orphan*/  PSMOUSE_CMD_SETSTREAM ; 
 scalar_t__ FUNC0 (struct psmouse*) ; 
 scalar_t__ FUNC1 (struct psmouse*,int) ; 
 scalar_t__ FUNC2 (struct psmouse*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct psmouse*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct psmouse*,char*) ; 

__attribute__((used)) static int FUNC6(struct psmouse *psmouse)
{
	struct alps_data *priv = psmouse->private;

	if ((priv->flags & ALPS_PASS) &&
	    FUNC1(psmouse, true)) {
		return -1;
	}

	if (FUNC2(psmouse, true)) {
		FUNC5(psmouse, "Failed to enable hardware tapping\n");
		return -1;
	}

	if (FUNC0(psmouse)) {
		FUNC4(psmouse, "Failed to enable absolute mode\n");
		return -1;
	}

	if ((priv->flags & ALPS_PASS) &&
	    FUNC1(psmouse, false)) {
		return -1;
	}

	/* ALPS needs stream mode, otherwise it won't report any data */
	if (FUNC3(&psmouse->ps2dev, NULL, PSMOUSE_CMD_SETSTREAM)) {
		FUNC4(psmouse, "Failed to enable stream mode\n");
		return -1;
	}

	return 0;
}