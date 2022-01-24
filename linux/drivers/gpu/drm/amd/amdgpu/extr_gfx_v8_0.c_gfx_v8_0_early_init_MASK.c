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
struct TYPE_2__ {int /*<<< orphan*/ * funcs; int /*<<< orphan*/  num_compute_rings; int /*<<< orphan*/  num_gfx_rings; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_MAX_COMPUTE_RINGS ; 
 int /*<<< orphan*/  GFX8_NUM_GFX_RINGS ; 
 int /*<<< orphan*/  gfx_v8_0_gfx_funcs ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC4(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	adev->gfx.num_gfx_rings = GFX8_NUM_GFX_RINGS;
	adev->gfx.num_compute_rings = AMDGPU_MAX_COMPUTE_RINGS;
	adev->gfx.funcs = &gfx_v8_0_gfx_funcs;
	FUNC2(adev);
	FUNC1(adev);
	FUNC0(adev);
	FUNC3(adev);

	return 0;
}