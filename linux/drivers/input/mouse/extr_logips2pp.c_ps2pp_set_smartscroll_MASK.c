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
typedef  int u8 ;
struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PSMOUSE_CMD_SETRES ; 
 int /*<<< orphan*/  FUNC0 (struct ps2dev*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct psmouse*,int*,int) ; 

__attribute__((used)) static void FUNC2(struct psmouse *psmouse, bool smartscroll)
{
	struct ps2dev *ps2dev = &psmouse->ps2dev;
	u8 param[4];

	FUNC1(psmouse, param, 0x32);

	param[0] = 0;
	FUNC0(ps2dev, param, PSMOUSE_CMD_SETRES);
	FUNC0(ps2dev, param, PSMOUSE_CMD_SETRES);
	FUNC0(ps2dev, param, PSMOUSE_CMD_SETRES);

	param[0] = smartscroll;
	FUNC0(ps2dev, param, PSMOUSE_CMD_SETRES);
}