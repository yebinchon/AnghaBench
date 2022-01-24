#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_3__ {int num_pipe_per_mec; int hpd_eop_gpu_addr; } ;
struct TYPE_4__ {TYPE_1__ mec; } ;
struct amdgpu_device {int /*<<< orphan*/  srbm_mutex; TYPE_2__ gfx; } ;

/* Variables and functions */
 int CP_HPD_EOP_CONTROL__EOP_SIZE_MASK ; 
 int GFX7_MEC_HPD_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCP_HPD_EOP_BASE_ADDR ; 
 int /*<<< orphan*/  mmCP_HPD_EOP_BASE_ADDR_HI ; 
 int /*<<< orphan*/  mmCP_HPD_EOP_CONTROL ; 
 int /*<<< orphan*/  mmCP_HPD_EOP_VMID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct amdgpu_device *adev,
				       int mec, int pipe)
{
	u64 eop_gpu_addr;
	u32 tmp;
	size_t eop_offset = (mec * adev->gfx.mec.num_pipe_per_mec + pipe)
			    * GFX7_MEC_HPD_SIZE * 2;

	FUNC3(&adev->srbm_mutex);
	eop_gpu_addr = adev->gfx.mec.hpd_eop_gpu_addr + eop_offset;

	FUNC2(adev, mec + 1, pipe, 0, 0);

	/* write the EOP addr */
	FUNC1(mmCP_HPD_EOP_BASE_ADDR, eop_gpu_addr >> 8);
	FUNC1(mmCP_HPD_EOP_BASE_ADDR_HI, FUNC6(eop_gpu_addr) >> 8);

	/* set the VMID assigned */
	FUNC1(mmCP_HPD_EOP_VMID, 0);

	/* set the EOP size, register value is 2^(EOP_SIZE+1) dwords */
	tmp = FUNC0(mmCP_HPD_EOP_CONTROL);
	tmp &= ~CP_HPD_EOP_CONTROL__EOP_SIZE_MASK;
	tmp |= FUNC5(GFX7_MEC_HPD_SIZE / 8);
	FUNC1(mmCP_HPD_EOP_CONTROL, tmp);

	FUNC2(adev, 0, 0, 0, 0);
	FUNC4(&adev->srbm_mutex);
}