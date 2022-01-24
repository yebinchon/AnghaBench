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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_smmu_as {int /*<<< orphan*/  pd; struct page** pts; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct page*,unsigned long) ; 

__attribute__((used)) static u32 *FUNC4(struct tegra_smmu_as *as, unsigned long iova,
				  dma_addr_t *dmap)
{
	unsigned int pd_index = FUNC0(iova);
	struct page *pt_page;
	u32 *pd;

	pt_page = as->pts[pd_index];
	if (!pt_page)
		return NULL;

	pd = FUNC1(as->pd);
	*dmap = FUNC2(pd[pd_index]);

	return FUNC3(pt_page, iova);
}