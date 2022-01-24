#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  rlc_fw_version; } ;
struct amdgpu_device {int flags; TYPE_1__ gfx; } ;

/* Variables and functions */
 int AMD_IS_APU ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  RLC_CNTL ; 
 int /*<<< orphan*/  RLC_ENABLE_F32 ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  mmRLC_GPM_GENERAL_12 ; 
 int /*<<< orphan*/  mmRLC_GPM_GENERAL_6 ; 
 int /*<<< orphan*/  mmRLC_GPM_TIMER_INT_3 ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct amdgpu_device *adev)
{
#ifdef AMDGPU_RLC_DEBUG_RETRY
	u32 rlc_ucode_ver;
#endif

	FUNC2(GC, 0, RLC_CNTL, RLC_ENABLE_F32, 1);
	FUNC5(50);

	/* carrizo do enable cp interrupt after cp inited */
	if (!(adev->flags & AMD_IS_APU)) {
		FUNC4(adev, true);
		FUNC5(50);
	}

#ifdef AMDGPU_RLC_DEBUG_RETRY
	/* RLC_GPM_GENERAL_6 : RLC Ucode version */
	rlc_ucode_ver = RREG32_SOC15(GC, 0, mmRLC_GPM_GENERAL_6);
	if(rlc_ucode_ver == 0x108) {
		DRM_INFO("Using rlc debug ucode. mmRLC_GPM_GENERAL_6 ==0x08%x / fw_ver == %i \n",
				rlc_ucode_ver, adev->gfx.rlc_fw_version);
		/* RLC_GPM_TIMER_INT_3 : Timer interval in RefCLK cycles,
		 * default is 0x9C4 to create a 100us interval */
		WREG32_SOC15(GC, 0, mmRLC_GPM_TIMER_INT_3, 0x9C4);
		/* RLC_GPM_GENERAL_12 : Minimum gap between wptr and rptr
		 * to disable the page fault retry interrupts, default is
		 * 0x100 (256) */
		WREG32_SOC15(GC, 0, mmRLC_GPM_GENERAL_12, 0x100);
	}
#endif
}