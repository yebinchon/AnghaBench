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
struct TYPE_2__ {int initialized; int /*<<< orphan*/  bdev; int /*<<< orphan*/ * aper_base_kaddr; } ;
struct amdgpu_device {TYPE_1__ mman; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_PL_GDS ; 
 int /*<<< orphan*/  AMDGPU_PL_GWS ; 
 int /*<<< orphan*/  AMDGPU_PL_OA ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TTM_PL_TT ; 
 int /*<<< orphan*/  TTM_PL_VRAM ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct amdgpu_device *adev)
{
	if (!adev->mman.initialized)
		return;

	FUNC1(adev);
	FUNC2(adev);
	if (adev->mman.aper_base_kaddr)
		FUNC3(adev->mman.aper_base_kaddr);
	adev->mman.aper_base_kaddr = NULL;

	FUNC4(&adev->mman.bdev, TTM_PL_VRAM);
	FUNC4(&adev->mman.bdev, TTM_PL_TT);
	FUNC4(&adev->mman.bdev, AMDGPU_PL_GDS);
	FUNC4(&adev->mman.bdev, AMDGPU_PL_GWS);
	FUNC4(&adev->mman.bdev, AMDGPU_PL_OA);
	FUNC5(&adev->mman.bdev);
	adev->mman.initialized = false;
	FUNC0("amdgpu: ttm finalized\n");
}