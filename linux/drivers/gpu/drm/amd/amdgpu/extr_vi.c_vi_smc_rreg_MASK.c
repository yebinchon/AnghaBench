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
struct amdgpu_device {int /*<<< orphan*/  smc_idx_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmSMC_IND_DATA_11 ; 
 int /*<<< orphan*/  mmSMC_IND_INDEX_11 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u32 FUNC4(struct amdgpu_device *adev, u32 reg)
{
	unsigned long flags;
	u32 r;

	FUNC2(&adev->smc_idx_lock, flags);
	FUNC1(mmSMC_IND_INDEX_11, (reg));
	r = FUNC0(mmSMC_IND_DATA_11);
	FUNC3(&adev->smc_idx_lock, flags);
	return r;
}