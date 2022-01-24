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
typedef  int u32 ;
struct amdgpu_device {int flags; } ;

/* Variables and functions */
 int AMD_IS_APU ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMC_SYSCON_CLOCK_CNTL_0 ; 
 int /*<<< orphan*/  ck_disable ; 
 int /*<<< orphan*/  ixSMC_PC_C ; 
 int /*<<< orphan*/  ixSMC_SYSCON_CLOCK_CNTL_0 ; 

__attribute__((used)) static bool FUNC2(struct amdgpu_device *adev)
{
	u32 clock_cntl, pc;

	if (adev->flags & AMD_IS_APU)
		return false;

	/* check if the SMC is already running */
	clock_cntl = FUNC1(ixSMC_SYSCON_CLOCK_CNTL_0);
	pc = FUNC1(ixSMC_PC_C);
	if ((0 == FUNC0(clock_cntl, SMC_SYSCON_CLOCK_CNTL_0, ck_disable)) &&
	    (0x20100 <= pc))
		return true;

	return false;
}