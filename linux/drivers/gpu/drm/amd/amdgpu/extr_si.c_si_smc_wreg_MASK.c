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
 int /*<<< orphan*/  SMC_IND_DATA_0 ; 
 int /*<<< orphan*/  SMC_IND_INDEX_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev, u32 reg, u32 v)
{
	unsigned long flags;

	FUNC1(&adev->smc_idx_lock, flags);
	FUNC0(SMC_IND_INDEX_0, (reg));
	FUNC0(SMC_IND_DATA_0, (v));
	FUNC2(&adev->smc_idx_lock, flags);
}