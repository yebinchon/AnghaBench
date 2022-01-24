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
typedef  int /*<<< orphan*/  u16 ;
struct iommu_cmd {int dummy; } ;
struct amd_iommu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iommu_cmd*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct amd_iommu*,struct iommu_cmd*) ; 

__attribute__((used)) static int FUNC2(struct amd_iommu *iommu, u16 devid)
{
	struct iommu_cmd cmd;

	FUNC0(&cmd, devid);

	return FUNC1(iommu, &cmd);
}