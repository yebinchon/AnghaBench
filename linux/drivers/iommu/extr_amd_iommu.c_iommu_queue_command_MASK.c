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
 int FUNC0 (struct amd_iommu*,struct iommu_cmd*,int) ; 

__attribute__((used)) static int FUNC1(struct amd_iommu *iommu, struct iommu_cmd *cmd)
{
	return FUNC0(iommu, cmd, true);
}