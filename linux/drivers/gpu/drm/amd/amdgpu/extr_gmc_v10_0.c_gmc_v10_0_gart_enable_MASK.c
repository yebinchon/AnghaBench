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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int ready; int /*<<< orphan*/ * bo; } ;
struct TYPE_5__ {int gart_size; } ;
struct amdgpu_device {TYPE_3__ gart; TYPE_2__ gmc; TYPE_1__* nbio_funcs; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* hdp_flush ) (struct amdgpu_device*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GFXHUB_0 ; 
 int /*<<< orphan*/  AMDGPU_MMHUB_0 ; 
 scalar_t__ AMDGPU_VM_FAULT_STOP_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned long long) ; 
 int EINVAL ; 
 int /*<<< orphan*/  HDP ; 
 int /*<<< orphan*/  HDP_MISC_CNTL__FLUSH_INVALIDATE_CACHE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct amdgpu_device*) ; 
 scalar_t__ amdgpu_vm_fault_stop ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmHDP_HOST_PATH_CNTL ; 
 int /*<<< orphan*/  mmHDP_MISC_CNTL ; 
 int FUNC9 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct amdgpu_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct amdgpu_device *adev)
{
	int r;
	bool value;
	u32 tmp;

	if (adev->gart.bo == NULL) {
		FUNC5(adev->dev, "No VRAM object for PCIE GART.\n");
		return -EINVAL;
	}

	r = FUNC4(adev);
	if (r)
		return r;

	r = FUNC6(adev);
	if (r)
		return r;

	r = FUNC9(adev);
	if (r)
		return r;

	tmp = FUNC1(HDP, 0, mmHDP_MISC_CNTL);
	tmp |= HDP_MISC_CNTL__FLUSH_INVALIDATE_CACHE_MASK;
	FUNC2(HDP, 0, mmHDP_MISC_CNTL, tmp);

	tmp = FUNC1(HDP, 0, mmHDP_HOST_PATH_CNTL);
	FUNC2(HDP, 0, mmHDP_HOST_PATH_CNTL, tmp);

	/* Flush HDP after it is initialized */
	adev->nbio_funcs->hdp_flush(adev, NULL);

	value = (amdgpu_vm_fault_stop == AMDGPU_VM_FAULT_STOP_ALWAYS) ?
		false : true;

	FUNC7(adev, value);
	FUNC10(adev, value);
	FUNC8(adev, 0, AMDGPU_MMHUB_0, 0);
	FUNC8(adev, 0, AMDGPU_GFXHUB_0, 0);

	FUNC0("PCIE GART of %uM enabled (table at 0x%016llX).\n",
		 (unsigned)(adev->gmc.gart_size >> 20),
		 (unsigned long long)FUNC3(adev->gart.bo));

	adev->gart.ready = true;

	return 0;
}