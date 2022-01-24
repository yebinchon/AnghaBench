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
struct mtk_cryp {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ AIC_G_OPTIONS ; 
 scalar_t__ AIC_G_VERSION ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int ENXIO ; 
 int MTK_AIC_INT_MSK ; 
 int MTK_AIC_VER11 ; 
 int MTK_AIC_VER12 ; 
 int MTK_AIC_VER_MSK ; 
 int MTK_RING_MAX ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct mtk_cryp *cryp, int hw)
{
	u32 val;

	if (hw == MTK_RING_MAX)
		val = FUNC2(cryp->base + AIC_G_VERSION);
	else
		val = FUNC2(cryp->base + FUNC1(hw));

	val &= MTK_AIC_VER_MSK;
	if (val != MTK_AIC_VER11 && val != MTK_AIC_VER12)
		return -ENXIO;

	if (hw == MTK_RING_MAX)
		val = FUNC2(cryp->base + AIC_G_OPTIONS);
	else
		val = FUNC2(cryp->base + FUNC0(hw));

	val &= MTK_AIC_INT_MSK;
	if (!val || val > 32)
		return -ENXIO;

	return 0;
}