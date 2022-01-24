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
struct iommu_cmd {int dummy; } ;
struct amd_iommu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iommu_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct amd_iommu*) ; 
 int /*<<< orphan*/  FUNC2 (struct amd_iommu*,struct iommu_cmd*) ; 

__attribute__((used)) static void FUNC3(struct amd_iommu *iommu)
{
	struct iommu_cmd cmd;

	FUNC0(&cmd);

	FUNC2(iommu, &cmd);
	FUNC1(iommu);
}