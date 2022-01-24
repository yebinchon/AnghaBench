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
 int /*<<< orphan*/  FUNC0 (struct psmouse*) ; 
 int FUNC1 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct ps2dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct psmouse*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct psmouse*) ; 

__attribute__((used)) static int FUNC6(struct psmouse *psmouse, bool recalibrate)
{
	int err;

	FUNC5(psmouse);

	if (recalibrate) {
		struct ps2dev *ps2dev = &psmouse->ps2dev;

		/* send the recalibrate request */
		if (FUNC3(ps2dev, NULL, 0xf5) ||
		    FUNC3(ps2dev, NULL, 0xf5) ||
		    FUNC3(ps2dev, NULL, 0xe6) ||
		    FUNC3(ps2dev, NULL, 0xf5)) {
			return -1;
		}

		/* according to ALPS, 150mS is required for recalibration */
		FUNC2(150);
	}

	err = FUNC1(psmouse);
	if (err) {
		FUNC4(psmouse, "failed to select mode\n");
		return err;
	}

	FUNC0(psmouse);

	return 0;
}