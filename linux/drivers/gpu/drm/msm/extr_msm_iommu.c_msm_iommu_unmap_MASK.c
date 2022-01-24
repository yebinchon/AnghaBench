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
struct msm_mmu {int dummy; } ;
struct msm_iommu {int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct msm_iommu* FUNC1 (struct msm_mmu*) ; 

__attribute__((used)) static int FUNC2(struct msm_mmu *mmu, uint64_t iova, unsigned len)
{
	struct msm_iommu *iommu = FUNC1(mmu);

	FUNC0(iommu->domain, iova, len);

	return 0;
}