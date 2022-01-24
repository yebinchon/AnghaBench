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
struct mtk_iommu_domain {int /*<<< orphan*/  pgt_pa; int /*<<< orphan*/  pgt_va; struct mtk_iommu_data* data; } ;
struct mtk_iommu_data {int /*<<< orphan*/  dev; } ;
struct iommu_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M2701_IOMMU_PGT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_iommu_domain*) ; 
 struct mtk_iommu_domain* FUNC2 (struct iommu_domain*) ; 

__attribute__((used)) static void FUNC3(struct iommu_domain *domain)
{
	struct mtk_iommu_domain *dom = FUNC2(domain);
	struct mtk_iommu_data *data = dom->data;

	FUNC0(data->dev, M2701_IOMMU_PGT_SIZE,
			dom->pgt_va, dom->pgt_pa);
	FUNC1(FUNC2(domain));
}