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
struct mtk_iommu_domain {struct mtk_iommu_data* data; int /*<<< orphan*/  pgt_pa; int /*<<< orphan*/  pgt_va; int /*<<< orphan*/  pgtlock; } ;
struct mtk_iommu_data {scalar_t__ base; int /*<<< orphan*/  dev; struct mtk_iommu_domain* m4u_dom; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  M2701_IOMMU_PGT_SIZE ; 
 scalar_t__ REG_MMU_PT_BASE_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct mtk_iommu_data *data)
{
	struct mtk_iommu_domain *dom = data->m4u_dom;

	FUNC1(&dom->pgtlock);

	dom->pgt_va = FUNC0(data->dev, M2701_IOMMU_PGT_SIZE,
					 &dom->pgt_pa, GFP_KERNEL);
	if (!dom->pgt_va)
		return -ENOMEM;

	FUNC2(dom->pgt_pa, data->base + REG_MMU_PT_BASE_ADDR);

	dom->data = data;

	return 0;
}