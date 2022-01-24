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
struct psmouse {scalar_t__ model; struct ps2dev ps2dev; } ;

/* Variables and functions */
 scalar_t__ HGPK_MODEL_D ; 
 int PSMOUSE_CMD_DISABLE ; 
 int /*<<< orphan*/  PSMOUSE_IGNORE ; 
 int /*<<< orphan*/  PSMOUSE_INITIALIZING ; 
 int FUNC0 (struct psmouse*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct ps2dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ps2dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC5 (struct psmouse*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct psmouse*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct psmouse*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct psmouse *psmouse, int enable)
{
	struct ps2dev *ps2dev = &psmouse->ps2dev;
	int timeo;
	int err;

	/* Added on D-series touchpads */
	if (psmouse->model < HGPK_MODEL_D)
		return 0;

	if (enable) {
		FUNC7(psmouse, PSMOUSE_INITIALIZING);

		/*
		 * Sending a byte will drive MS-DAT low; this will wake up
		 * the controller.  Once we get an ACK back from it, it
		 * means we can continue with the touchpad re-init.  ALPS
		 * tells us that 1s should be long enough, so set that as
		 * the upper bound. (in practice, it takes about 3 loops.)
		 */
		for (timeo = 20; timeo > 0; timeo--) {
			if (!FUNC3(ps2dev, PSMOUSE_CMD_DISABLE, 20))
				break;
			FUNC1(25);
		}

		err = FUNC0(psmouse, false);
		if (err) {
			FUNC6(psmouse, "Failed to reset device!\n");
			return err;
		}

		/* should be all set, enable the touchpad */
		FUNC4(psmouse);
		FUNC5(psmouse, "Touchpad powered up.\n");
	} else {
		FUNC5(psmouse, "Powering off touchpad.\n");

		if (FUNC2(ps2dev, NULL, 0xec) ||
		    FUNC2(ps2dev, NULL, 0xec) ||
		    FUNC2(ps2dev, NULL, 0xea)) {
			return -1;
		}

		FUNC7(psmouse, PSMOUSE_IGNORE);

		/* probably won't see an ACK, the touchpad will be off */
		FUNC3(ps2dev, 0xec, 20);
	}

	return 0;
}