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
typedef  scalar_t__ u8 ;
struct psmouse {int /*<<< orphan*/  ps2dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  PSMOUSE_CMD_RESET_BAT ; 
 scalar_t__ PSMOUSE_RET_BAT ; 
 scalar_t__ PSMOUSE_RET_ID ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ) ; 

int FUNC1(struct psmouse *psmouse)
{
	u8 param[2];
	int error;

	error = FUNC0(&psmouse->ps2dev, param, PSMOUSE_CMD_RESET_BAT);
	if (error)
		return error;

	if (param[0] != PSMOUSE_RET_BAT && param[1] != PSMOUSE_RET_ID)
		return -EIO;

	return 0;
}