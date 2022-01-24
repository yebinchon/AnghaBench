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
typedef  int /*<<< orphan*/  u64 ;
struct amdgpu_gmc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vram_base_offset; } ;
struct amdgpu_device {TYPE_1__ vm_manager; int /*<<< orphan*/  gmc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,struct amdgpu_gmc*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 

__attribute__((used)) static void FUNC5(struct amdgpu_device *adev,
					struct amdgpu_gmc *mc)
{
	u64 base = 0;

	if (!FUNC2(adev))
		base = FUNC3(adev);

	FUNC1(adev, &adev->gmc, base);
	FUNC0(adev, mc);

	/* base offset of vram pages */
	adev->vm_manager.vram_base_offset = FUNC4(adev);
}