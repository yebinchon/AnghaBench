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
struct mtk_cryp {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ AIC_G_ENABLE_CTRL ; 
 scalar_t__ AIC_G_ENABLE_SET ; 
 scalar_t__ AIC_G_POL_CTRL ; 
 scalar_t__ AIC_G_TYPE_CTRL ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int MTK_RING_MAX ; 
 int FUNC4 (struct mtk_cryp*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct mtk_cryp *cryp, int hw)
{
	int err;

	err = FUNC4(cryp, hw);
	if (err)
		return err;

	/* Disable all interrupts and set initial configuration */
	if (hw == MTK_RING_MAX) {
		FUNC5(0, cryp->base + AIC_G_ENABLE_CTRL);
		FUNC5(0, cryp->base + AIC_G_POL_CTRL);
		FUNC5(0, cryp->base + AIC_G_TYPE_CTRL);
		FUNC5(0, cryp->base + AIC_G_ENABLE_SET);
	} else {
		FUNC5(0, cryp->base + FUNC0(hw));
		FUNC5(0, cryp->base + FUNC2(hw));
		FUNC5(0, cryp->base + FUNC3(hw));
		FUNC5(0, cryp->base + FUNC1(hw));
	}

	return 0;
}