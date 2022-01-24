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
struct psmouse {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct psmouse*,int) ; 
 int FUNC1 (struct psmouse*,int,int) ; 

__attribute__((used)) static int FUNC2(struct psmouse *psmouse)
{
	u16 reg_val = 0x181;
	int ret = -1;

	/* enter monitor mode, to write the register */
	if (FUNC0(psmouse, true))
		return -1;

	ret = FUNC1(psmouse, 0x000, reg_val);

	if (FUNC0(psmouse, false))
		ret = -1;

	return ret;
}