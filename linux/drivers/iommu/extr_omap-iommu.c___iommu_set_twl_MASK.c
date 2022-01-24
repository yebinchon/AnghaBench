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
struct omap_iommu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMU_CNTL ; 
 int MMU_CNTL_MASK ; 
 int MMU_CNTL_MMU_EN ; 
 int MMU_CNTL_TWL_EN ; 
 int /*<<< orphan*/  MMU_IRQENABLE ; 
 int MMU_IRQ_TLB_MISS_MASK ; 
 int MMU_IRQ_TWL_MASK ; 
 int FUNC0 (struct omap_iommu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_iommu*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct omap_iommu *obj, bool on)
{
	u32 l = FUNC0(obj, MMU_CNTL);

	if (on)
		FUNC1(obj, MMU_IRQ_TWL_MASK, MMU_IRQENABLE);
	else
		FUNC1(obj, MMU_IRQ_TLB_MISS_MASK, MMU_IRQENABLE);

	l &= ~MMU_CNTL_MASK;
	if (on)
		l |= (MMU_CNTL_MMU_EN | MMU_CNTL_TWL_EN);
	else
		l |= (MMU_CNTL_MMU_EN);

	FUNC1(obj, l, MMU_CNTL);
}