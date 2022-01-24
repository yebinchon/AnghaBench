#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32 ;
struct kv_reset_save_regs {int /*<<< orphan*/  member_0; } ;
struct amdgpu_device {int flags; scalar_t__ usec_timeout; int has_hw_reset; int /*<<< orphan*/  pdev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AMD_IS_APU ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,struct kv_reset_save_regs*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,struct kv_reset_save_regs*) ; 
 int /*<<< orphan*/  mmCONFIG_MEMSIZE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct amdgpu_device *adev)
{
	struct kv_reset_save_regs kv_save = { 0 };
	u32 i;
	int r = -EINVAL;

	FUNC2(adev->dev, "GPU pci config reset\n");

	if (adev->flags & AMD_IS_APU)
		FUNC4(adev, &kv_save);

	/* disable BM */
	FUNC5(adev->pdev);
	/* reset */
	FUNC1(adev);

	FUNC7(100);

	/* wait for asic to come out of reset */
	for (i = 0; i < adev->usec_timeout; i++) {
		if (FUNC0(mmCONFIG_MEMSIZE) != 0xffffffff) {
			/* enable BM */
			FUNC6(adev->pdev);
			adev->has_hw_reset = true;
			r = 0;
			break;
		}
		FUNC7(1);
	}

	/* does asic init need to be run first??? */
	if (adev->flags & AMD_IS_APU)
		FUNC3(adev, &kv_save);

	return r;
}