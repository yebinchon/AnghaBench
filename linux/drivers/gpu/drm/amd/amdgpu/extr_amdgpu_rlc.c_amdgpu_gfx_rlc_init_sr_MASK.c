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
typedef  int u32 ;
struct TYPE_3__ {int* sr_ptr; int* reg_list; int reg_list_size; int /*<<< orphan*/  save_restore_obj; int /*<<< orphan*/  save_restore_gpu_addr; } ;
struct TYPE_4__ {TYPE_1__ rlc; } ;
struct amdgpu_device {TYPE_2__ gfx; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_VRAM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct amdgpu_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int FUNC4 (int const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC6(struct amdgpu_device *adev, u32 dws)
{
	const u32 *src_ptr;
	volatile u32 *dst_ptr;
	u32 i;
	int r;

	/* allocate save restore block */
	r = FUNC0(adev, dws * 4, PAGE_SIZE,
				      AMDGPU_GEM_DOMAIN_VRAM,
				      &adev->gfx.rlc.save_restore_obj,
				      &adev->gfx.rlc.save_restore_gpu_addr,
				      (void **)&adev->gfx.rlc.sr_ptr);
	if (r) {
		FUNC5(adev->dev, "(%d) create RLC sr bo failed\n", r);
		FUNC3(adev);
		return r;
	}

	/* write the sr buffer */
	src_ptr = adev->gfx.rlc.reg_list;
	dst_ptr = adev->gfx.rlc.sr_ptr;
	for (i = 0; i < adev->gfx.rlc.reg_list_size; i++)
		dst_ptr[i] = FUNC4(src_ptr[i]);
	FUNC1(adev->gfx.rlc.save_restore_obj);
	FUNC2(adev->gfx.rlc.save_restore_obj);

	return 0;
}