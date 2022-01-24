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
struct intel_gvt {int /*<<< orphan*/  dev_priv; } ;

/* Variables and functions */
 unsigned long D_BDW ; 
 unsigned long D_BXT ; 
 unsigned long D_CFL ; 
 unsigned long D_KBL ; 
 unsigned long D_SKL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

unsigned long FUNC5(struct intel_gvt *gvt)
{
	if (FUNC0(gvt->dev_priv))
		return D_BDW;
	else if (FUNC4(gvt->dev_priv))
		return D_SKL;
	else if (FUNC3(gvt->dev_priv))
		return D_KBL;
	else if (FUNC1(gvt->dev_priv))
		return D_BXT;
	else if (FUNC2(gvt->dev_priv))
		return D_CFL;

	return 0;
}