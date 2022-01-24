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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int num_mec; int num_pipe_per_mec; int /*<<< orphan*/  hpd_eop_obj; int /*<<< orphan*/  hpd_eop_gpu_addr; int /*<<< orphan*/  queue_bitmap; } ;
struct TYPE_4__ {TYPE_1__ mec; } ;
struct amdgpu_device {TYPE_2__ gfx; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_VRAM ; 
 int /*<<< orphan*/  AMDGPU_MAX_COMPUTE_QUEUES ; 
 int GFX7_MEC_HPD_SIZE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct amdgpu_device*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC8(struct amdgpu_device *adev)
{
	int r;
	u32 *hpd;
	size_t mec_hpd_size;

	FUNC4(adev->gfx.mec.queue_bitmap, AMDGPU_MAX_COMPUTE_QUEUES);

	/* take ownership of the relevant compute queues */
	FUNC3(adev);

	/* allocate space for ALL pipes (even the ones we don't own) */
	mec_hpd_size = adev->gfx.mec.num_mec * adev->gfx.mec.num_pipe_per_mec
		* GFX7_MEC_HPD_SIZE * 2;

	r = FUNC0(adev, mec_hpd_size, PAGE_SIZE,
				      AMDGPU_GEM_DOMAIN_VRAM,
				      &adev->gfx.mec.hpd_eop_obj,
				      &adev->gfx.mec.hpd_eop_gpu_addr,
				      (void **)&hpd);
	if (r) {
		FUNC5(adev->dev, "(%d) create, pin or map of HDP EOP bo failed\n", r);
		FUNC6(adev);
		return r;
	}

	/* clear memory.  Not sure if this is required or not */
	FUNC7(hpd, 0, mec_hpd_size);

	FUNC1(adev->gfx.mec.hpd_eop_obj);
	FUNC2(adev->gfx.mec.hpd_eop_obj);

	return 0;
}