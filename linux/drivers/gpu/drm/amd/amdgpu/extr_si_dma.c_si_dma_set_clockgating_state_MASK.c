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
struct TYPE_2__ {int num_instances; } ;
struct amdgpu_device {int cg_flags; TYPE_1__ sdma; } ;
typedef  enum amd_clockgating_state { ____Placeholder_amd_clockgating_state } amd_clockgating_state ;

/* Variables and functions */
 int AMD_CG_STATE_GATE ; 
 int AMD_CG_SUPPORT_SDMA_MGCG ; 
 int DMA0_REGISTER_OFFSET ; 
 int DMA1_REGISTER_OFFSET ; 
 int DMA_CLK_CTRL ; 
 int DMA_POWER_CNTL ; 
 int MEM_POWER_OVERRIDE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(void *handle,
					  enum amd_clockgating_state state)
{
	u32 orig, data, offset;
	int i;
	bool enable;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	enable = (state == AMD_CG_STATE_GATE) ? true : false;

	if (enable && (adev->cg_flags & AMD_CG_SUPPORT_SDMA_MGCG)) {
		for (i = 0; i < adev->sdma.num_instances; i++) {
			if (i == 0)
				offset = DMA0_REGISTER_OFFSET;
			else
				offset = DMA1_REGISTER_OFFSET;
			orig = data = FUNC0(DMA_POWER_CNTL + offset);
			data &= ~MEM_POWER_OVERRIDE;
			if (data != orig)
				FUNC1(DMA_POWER_CNTL + offset, data);
			FUNC1(DMA_CLK_CTRL + offset, 0x00000100);
		}
	} else {
		for (i = 0; i < adev->sdma.num_instances; i++) {
			if (i == 0)
				offset = DMA0_REGISTER_OFFSET;
			else
				offset = DMA1_REGISTER_OFFSET;
			orig = data = FUNC0(DMA_POWER_CNTL + offset);
			data |= MEM_POWER_OVERRIDE;
			if (data != orig)
				FUNC1(DMA_POWER_CNTL + offset, data);

			orig = data = FUNC0(DMA_CLK_CTRL + offset);
			data = 0xff000000;
			if (data != orig)
				FUNC1(DMA_CLK_CTRL + offset, data);
		}
	}

	return 0;
}