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
struct TYPE_2__ {int /*<<< orphan*/  priv_inst_irq; int /*<<< orphan*/  priv_reg_irq; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ amdgpu_async_gfx_ring ; 
 scalar_t__ FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,int) ; 
 int FUNC7 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	int r;

	FUNC2(adev, &adev->gfx.priv_reg_irq, 0);
	FUNC2(adev, &adev->gfx.priv_inst_irq, 0);
#ifndef BRING_UP_DEBUG
	if (amdgpu_async_gfx_ring) {
		r = FUNC7(adev);
		if (r)
			FUNC0("KGQ disable failed\n");
	}
#endif
	if (FUNC1(adev))
		FUNC0("KCQ disable failed\n");
	if (FUNC3(adev)) {
		FUNC8("For SRIOV client, shouldn't do anything.\n");
		return 0;
	}
	FUNC4(adev, false);
	FUNC6(adev, false);
	FUNC5(adev);

	return 0;
}