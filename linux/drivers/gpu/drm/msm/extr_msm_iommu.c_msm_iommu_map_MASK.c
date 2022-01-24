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
typedef  int /*<<< orphan*/  uint64_t ;
struct sg_table {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct msm_mmu {int dummy; } ;
struct msm_iommu {int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct msm_iommu* FUNC2 (struct msm_mmu*) ; 

__attribute__((used)) static int FUNC3(struct msm_mmu *mmu, uint64_t iova,
		struct sg_table *sgt, unsigned len, int prot)
{
	struct msm_iommu *iommu = FUNC2(mmu);
	size_t ret;

	ret = FUNC1(iommu->domain, iova, sgt->sgl, sgt->nents, prot);
	FUNC0(!ret);

	return (ret == len) ? 0 : -EINVAL;
}