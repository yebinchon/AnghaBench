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
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENABLE_ADVANCED_DRIVER_MODEL ; 
 int /*<<< orphan*/  ENABLE_L1_TLB ; 
 int /*<<< orphan*/  ENABLE_L2_CACHE ; 
 int /*<<< orphan*/  MC_VM_MX_L1_TLB_CNTL ; 
 int /*<<< orphan*/  MMHUB ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_L2_CNTL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  mmMC_VM_MX_L1_TLB_CNTL ; 
 int /*<<< orphan*/  mmVM_CONTEXT0_CNTL ; 
 int /*<<< orphan*/  mmVM_L2_CNTL ; 
 int /*<<< orphan*/  mmVM_L2_CNTL3 ; 

void FUNC5(struct amdgpu_device *adev)
{
	u32 tmp;
	u32 i;

	/* Disable all tables */
	for (i = 0; i < 16; i++)
		FUNC3(MMHUB, 0, mmVM_CONTEXT0_CNTL, i, 0);

	/* Setup TLB control */
	tmp = FUNC1(MMHUB, 0, mmMC_VM_MX_L1_TLB_CNTL);
	tmp = FUNC0(tmp, MC_VM_MX_L1_TLB_CNTL, ENABLE_L1_TLB, 0);
	tmp = FUNC0(tmp,
				MC_VM_MX_L1_TLB_CNTL,
				ENABLE_ADVANCED_DRIVER_MODEL,
				0);
	FUNC2(MMHUB, 0, mmMC_VM_MX_L1_TLB_CNTL, tmp);

	if (!FUNC4(adev)) {
		/* Setup L2 cache */
		tmp = FUNC1(MMHUB, 0, mmVM_L2_CNTL);
		tmp = FUNC0(tmp, VM_L2_CNTL, ENABLE_L2_CACHE, 0);
		FUNC2(MMHUB, 0, mmVM_L2_CNTL, tmp);
		FUNC2(MMHUB, 0, mmVM_L2_CNTL3, 0);
	}
}