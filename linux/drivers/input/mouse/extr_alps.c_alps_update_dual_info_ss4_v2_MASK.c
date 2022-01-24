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
struct alps_data {int flags; int /*<<< orphan*/  dev_id; } ;

/* Variables and functions */
 int ALPS_DUALPOINT ; 
 int ALPS_DUALPOINT_WITH_PRESSURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PSMOUSE_CMD_ENABLE ; 
 int FUNC1 (struct psmouse*,int) ; 
 scalar_t__ FUNC2 (struct psmouse*) ; 
 scalar_t__ FUNC3 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC4 (struct ps2dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(unsigned char otp[][4],
					struct alps_data *priv,
					struct psmouse *psmouse)
{
	bool is_dual = false;
	int reg_val = 0;
	struct ps2dev *ps2dev = &psmouse->ps2dev;

	if (FUNC0(priv->dev_id)) {
		is_dual = (otp[0][0] >> 4) & 0x01;

		if (!is_dual) {
			/* For support TrackStick of Thinkpad L/E series */
			if (FUNC3(psmouse) == 0 &&
				FUNC2(psmouse) == 0) {
				reg_val = FUNC1(psmouse,
									0xD7);
			}
			FUNC3(psmouse);
			FUNC4(ps2dev, NULL, PSMOUSE_CMD_ENABLE);

			if (reg_val == 0x0C || reg_val == 0x1D)
				is_dual = true;
		}
	}

	if (is_dual)
		priv->flags |= ALPS_DUALPOINT |
					ALPS_DUALPOINT_WITH_PRESSURE;

	return 0;
}