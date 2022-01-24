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
struct msm_mmu {int /*<<< orphan*/  dev; } ;
struct msm_iommu {int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct msm_iommu* FUNC1 (struct msm_mmu*) ; 

__attribute__((used)) static int FUNC2(struct msm_mmu *mmu, const char * const *names,
			    int cnt)
{
	struct msm_iommu *iommu = FUNC1(mmu);

	return FUNC0(iommu->domain, mmu->dev);
}