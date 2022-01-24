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
struct psmouse {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct psmouse*,int) ; 
 int FUNC1 (struct psmouse*,int) ; 
 scalar_t__ FUNC2 (struct psmouse*) ; 
 scalar_t__ FUNC3 (struct psmouse*) ; 

__attribute__((used)) static int FUNC4(struct psmouse *psmouse,
				    int reg_base, bool enable)
{
	int reg_val, ret = -1;

	if (FUNC2(psmouse))
		return -1;

	reg_val = FUNC1(psmouse, reg_base + 0x0008);
	if (reg_val == -1)
		goto error;

	if (enable)
		reg_val |= 0x01;
	else
		reg_val &= ~0x01;

	ret = FUNC0(psmouse, reg_val);

error:
	if (FUNC3(psmouse))
		ret = -1;
	return ret;
}