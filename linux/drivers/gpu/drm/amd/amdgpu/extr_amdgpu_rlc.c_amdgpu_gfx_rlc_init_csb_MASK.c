#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int clear_state_size; int* cs_ptr; int /*<<< orphan*/  clear_state_obj; TYPE_1__* funcs; int /*<<< orphan*/  clear_state_gpu_addr; } ;
struct TYPE_6__ {TYPE_2__ rlc; } ;
struct amdgpu_device {TYPE_3__ gfx; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int (* get_csb_size ) (struct amdgpu_device*) ;int /*<<< orphan*/  (* get_csb_buffer ) (struct amdgpu_device*,int volatile*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_VRAM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct amdgpu_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*,int volatile*) ; 

int FUNC8(struct amdgpu_device *adev)
{
	volatile u32 *dst_ptr;
	u32 dws;
	int r;

	/* allocate clear state block */
	adev->gfx.rlc.clear_state_size = dws = adev->gfx.rlc.funcs->get_csb_size(adev);
	r = FUNC0(adev, dws * 4, PAGE_SIZE,
				      AMDGPU_GEM_DOMAIN_VRAM,
				      &adev->gfx.rlc.clear_state_obj,
				      &adev->gfx.rlc.clear_state_gpu_addr,
				      (void **)&adev->gfx.rlc.cs_ptr);
	if (r) {
		FUNC5(adev->dev, "(%d) failed to create rlc csb bo\n", r);
		FUNC4(adev);
		return r;
	}

	/* set up the cs buffer */
	dst_ptr = adev->gfx.rlc.cs_ptr;
	adev->gfx.rlc.funcs->get_csb_buffer(adev, dst_ptr);
	FUNC1(adev->gfx.rlc.clear_state_obj);
	FUNC2(adev->gfx.rlc.clear_state_obj);
	FUNC3(adev->gfx.rlc.clear_state_obj);

	return 0;
}