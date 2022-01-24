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
struct arm_smmu_device {int dummy; } ;

/* Variables and functions */
 int ARM_SMMU_GR0 ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct arm_smmu_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static u32 FUNC3(struct arm_smmu_device *smmu, int page,
			    int offset)
{
	if (page == ARM_SMMU_GR0)
		offset = FUNC0(offset);
	return FUNC2(FUNC1(smmu, page) + offset);
}