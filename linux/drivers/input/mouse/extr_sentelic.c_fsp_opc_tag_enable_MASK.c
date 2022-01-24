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
 int EIO ; 
 int FSP_BIT_EN_OPC_TAG ; 
 int /*<<< orphan*/  FSP_REG_OPC_QDOWN ; 
 int FUNC0 (struct psmouse*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct psmouse*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct psmouse*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct psmouse*,char*) ; 

__attribute__((used)) static int FUNC4(struct psmouse *psmouse, bool enable)
{
	int v, nv;
	int res = 0;

	if (FUNC0(psmouse, FSP_REG_OPC_QDOWN, &v) == -1) {
		FUNC3(psmouse, "Unable get OPC state.\n");
		return -EIO;
	}

	if (enable)
		nv = v | FSP_BIT_EN_OPC_TAG;
	else
		nv = v & ~FSP_BIT_EN_OPC_TAG;

	/* only write if necessary */
	if (nv != v) {
		FUNC2(psmouse, true);
		res = FUNC1(psmouse, FSP_REG_OPC_QDOWN, nv);
		FUNC2(psmouse, false);
	}

	if (res != 0) {
		FUNC3(psmouse, "Unable to enable OPC tag.\n");
		res = -EIO;
	}

	return res;
}