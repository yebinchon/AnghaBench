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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct cs_section_def {int dummy; } ;
struct TYPE_3__ {int* reg_list; int reg_list_size; int clear_state_size; int* cs_ptr; int /*<<< orphan*/  clear_state_obj; scalar_t__ clear_state_gpu_addr; struct cs_section_def* cs_data; } ;
struct TYPE_4__ {TYPE_1__ rlc; } ;
struct amdgpu_device {TYPE_2__ gfx; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_VRAM ; 
 scalar_t__ FUNC0 (int*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct amdgpu_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int FUNC5 (struct amdgpu_device*,int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*,int volatile*) ; 
 int FUNC9 (struct amdgpu_device*) ; 
 int FUNC10 (scalar_t__) ; 
 struct cs_section_def* si_cs_data ; 
 int FUNC11 (scalar_t__) ; 
 int* verde_rlc_save_restore_register_list ; 

__attribute__((used)) static int FUNC12(struct amdgpu_device *adev)
{
	const u32 *src_ptr;
	volatile u32 *dst_ptr;
	u32 dws;
	u64 reg_list_mc_addr;
	const struct cs_section_def *cs_data;
	int r;

	adev->gfx.rlc.reg_list = verde_rlc_save_restore_register_list;
	adev->gfx.rlc.reg_list_size =
			(u32)FUNC0(verde_rlc_save_restore_register_list);

	adev->gfx.rlc.cs_data = si_cs_data;
	src_ptr = adev->gfx.rlc.reg_list;
	dws = adev->gfx.rlc.reg_list_size;
	cs_data = adev->gfx.rlc.cs_data;

	if (src_ptr) {
		/* init save restore block */
		r = FUNC5(adev, dws);
		if (r)
			return r;
	}

	if (cs_data) {
		/* clear state block */
		adev->gfx.rlc.clear_state_size = FUNC9(adev);
		dws = adev->gfx.rlc.clear_state_size + (256 / 4);

		r = FUNC1(adev, dws * 4, PAGE_SIZE,
					      AMDGPU_GEM_DOMAIN_VRAM,
					      &adev->gfx.rlc.clear_state_obj,
					      &adev->gfx.rlc.clear_state_gpu_addr,
					      (void **)&adev->gfx.rlc.cs_ptr);
		if (r) {
			FUNC7(adev->dev, "(%d) create RLC c bo failed\n", r);
			FUNC4(adev);
			return r;
		}

		/* set up the cs buffer */
		dst_ptr = adev->gfx.rlc.cs_ptr;
		reg_list_mc_addr = adev->gfx.rlc.clear_state_gpu_addr + 256;
		dst_ptr[0] = FUNC6(FUNC11(reg_list_mc_addr));
		dst_ptr[1] = FUNC6(FUNC10(reg_list_mc_addr));
		dst_ptr[2] = FUNC6(adev->gfx.rlc.clear_state_size);
		FUNC8(adev, &dst_ptr[(256/4)]);
		FUNC2(adev->gfx.rlc.clear_state_obj);
		FUNC3(adev->gfx.rlc.clear_state_obj);
	}

	return 0;
}