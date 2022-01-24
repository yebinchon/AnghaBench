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
typedef  int u16 ;
struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PSMOUSE_CMD_DISABLE ; 
 int /*<<< orphan*/  PSMOUSE_CMD_ENABLE ; 
 scalar_t__ FUNC0 (struct psmouse*,int) ; 
 scalar_t__ FUNC1 (struct ps2dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct psmouse *psmouse,
				       u16 addr, u16 value)
{
	struct ps2dev *ps2dev = &psmouse->ps2dev;

	/* 0x0A0 is the command to write the word */
	if (FUNC1(ps2dev, NULL, PSMOUSE_CMD_ENABLE) ||
	    FUNC0(psmouse, 0x0A0) ||
	    FUNC0(psmouse, addr) ||
	    FUNC0(psmouse, value) ||
	    FUNC1(ps2dev, NULL, PSMOUSE_CMD_DISABLE))
		return -1;

	return 0;
}