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
typedef  int u32 ;
struct pti_device {int patgen; int mode; int clkdiv; int lpp_dest; scalar_t__ base; scalar_t__ freeclk; } ;
struct intel_th_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPP_DEST ; 
 int /*<<< orphan*/  PTI_CLKDIV ; 
 int PTI_EN ; 
 int PTI_FCEN ; 
 int /*<<< orphan*/  PTI_MODE ; 
 int /*<<< orphan*/  PTI_PATGENMODE ; 
 scalar_t__ REG_PTI_CTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct pti_device* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_th_device*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct intel_th_device *thdev)
{
	struct pti_device *pti = FUNC1(&thdev->dev);
	u32 ctl = PTI_EN;

	if (pti->patgen)
		ctl |= pti->patgen << FUNC0(PTI_PATGENMODE);
	if (pti->freeclk)
		ctl |= PTI_FCEN;
	ctl |= pti->mode << FUNC0(PTI_MODE);
	ctl |= pti->clkdiv << FUNC0(PTI_CLKDIV);
	ctl |= pti->lpp_dest << FUNC0(LPP_DEST);

	FUNC3(ctl, pti->base + REG_PTI_CTL);

	FUNC2(thdev);

	return 0;
}