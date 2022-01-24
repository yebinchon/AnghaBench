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
struct TYPE_5__ {int gim_feature; } ;
struct TYPE_6__ {int /*<<< orphan*/ * man; } ;
struct TYPE_4__ {TYPE_3__ bdev; } ;
struct amdgpu_device {TYPE_2__ virt; TYPE_1__ mman; } ;

/* Variables and functions */
 int AMDGIM_FEATURE_GIM_FLR_VRAMLOST ; 
 size_t TTM_PL_TT ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int FUNC2 (struct amdgpu_device*) ; 
 int FUNC3 (struct amdgpu_device*) ; 
 int FUNC4 (struct amdgpu_device*) ; 
 int FUNC5 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct amdgpu_device*,int) ; 
 int FUNC12 (struct amdgpu_device*,int) ; 
 int FUNC13 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC14(struct amdgpu_device *adev,
				     bool from_hypervisor)
{
	int r;

	if (from_hypervisor)
		r = FUNC12(adev, true);
	else
		r = FUNC13(adev);
	if (r)
		return r;

	FUNC1(adev);

	/* Resume IP prior to SMC */
	r = FUNC3(adev);
	if (r)
		goto error;

	/* we need recover gart prior to run SMC/CP/SDMA resume */
	FUNC6(&adev->mman.bdev.man[TTM_PL_TT]);

	r = FUNC2(adev);
	if (r)
		return r;

	/* now we are okay to resume SMC/CP/SDMA */
	r = FUNC4(adev);
	if (r)
		goto error;

	FUNC9(adev);
	r = FUNC7(adev);
	FUNC0(adev);

error:
	FUNC10(adev);
	FUNC11(adev, true);
	if (!r && adev->virt.gim_feature & AMDGIM_FEATURE_GIM_FLR_VRAMLOST) {
		FUNC8(adev);
		r = FUNC5(adev);
	}

	return r;
}