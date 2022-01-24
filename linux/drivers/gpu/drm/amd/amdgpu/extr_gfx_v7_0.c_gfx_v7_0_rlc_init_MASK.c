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
typedef  void* u32 ;
struct cs_section_def {int dummy; } ;
struct TYPE_3__ {void** reg_list; scalar_t__ cp_table_size; struct cs_section_def* cs_data; void* reg_list_size; } ;
struct TYPE_4__ {TYPE_1__ rlc; } ;
struct amdgpu_device {int flags; scalar_t__ asic_type; TYPE_2__ gfx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int AMD_IS_APU ; 
 scalar_t__ FUNC1 (void*) ; 
 scalar_t__ CHIP_KAVERI ; 
 int CP_ME_TABLE_SIZE ; 
 int FUNC2 (struct amdgpu_device*) ; 
 int FUNC3 (struct amdgpu_device*) ; 
 int FUNC4 (struct amdgpu_device*,void*) ; 
 struct cs_section_def* ci_cs_data ; 
 void* kalindi_rlc_save_restore_register_list ; 
 void* spectre_rlc_save_restore_register_list ; 

__attribute__((used)) static int FUNC5(struct amdgpu_device *adev)
{
	const u32 *src_ptr;
	u32 dws;
	const struct cs_section_def *cs_data;
	int r;

	/* allocate rlc buffers */
	if (adev->flags & AMD_IS_APU) {
		if (adev->asic_type == CHIP_KAVERI) {
			adev->gfx.rlc.reg_list = spectre_rlc_save_restore_register_list;
			adev->gfx.rlc.reg_list_size =
				(u32)FUNC1(spectre_rlc_save_restore_register_list);
		} else {
			adev->gfx.rlc.reg_list = kalindi_rlc_save_restore_register_list;
			adev->gfx.rlc.reg_list_size =
				(u32)FUNC1(kalindi_rlc_save_restore_register_list);
		}
	}
	adev->gfx.rlc.cs_data = ci_cs_data;
	adev->gfx.rlc.cp_table_size = FUNC0(CP_ME_TABLE_SIZE * 5 * 4, 2048); /* CP JT */
	adev->gfx.rlc.cp_table_size += 64 * 1024; /* GDS */

	src_ptr = adev->gfx.rlc.reg_list;
	dws = adev->gfx.rlc.reg_list_size;
	dws += (5 * 16) + 48 + 48 + 64;

	cs_data = adev->gfx.rlc.cs_data;

	if (src_ptr) {
		/* init save restore block */
		r = FUNC4(adev, dws);
		if (r)
			return r;
	}

	if (cs_data) {
		/* init clear state block */
		r = FUNC3(adev);
		if (r)
			return r;
	}

	if (adev->gfx.rlc.cp_table_size) {
		r = FUNC2(adev);
		if (r)
			return r;
	}

	return 0;
}