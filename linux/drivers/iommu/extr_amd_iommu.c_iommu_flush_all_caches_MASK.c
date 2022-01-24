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
struct amd_iommu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FEATURE_IA ; 
 int /*<<< orphan*/  FUNC0 (struct amd_iommu*) ; 
 int /*<<< orphan*/  FUNC1 (struct amd_iommu*) ; 
 int /*<<< orphan*/  FUNC2 (struct amd_iommu*) ; 
 int /*<<< orphan*/  FUNC3 (struct amd_iommu*) ; 
 scalar_t__ FUNC4 (struct amd_iommu*,int /*<<< orphan*/ ) ; 

void FUNC5(struct amd_iommu *iommu)
{
	if (FUNC4(iommu, FEATURE_IA)) {
		FUNC0(iommu);
	} else {
		FUNC1(iommu);
		FUNC2(iommu);
		FUNC3(iommu);
	}
}