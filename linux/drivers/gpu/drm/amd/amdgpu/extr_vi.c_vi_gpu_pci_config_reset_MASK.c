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
struct amdgpu_device {scalar_t__ usec_timeout; int has_hw_reset; int /*<<< orphan*/  pdev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mmCONFIG_MEMSIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct amdgpu_device *adev)
{
	u32 i;

	FUNC2(adev->dev, "GPU pci config reset\n");

	/* disable BM */
	FUNC3(adev->pdev);
	/* reset */
	FUNC1(adev);

	FUNC5(100);

	/* wait for asic to come out of reset */
	for (i = 0; i < adev->usec_timeout; i++) {
		if (FUNC0(mmCONFIG_MEMSIZE) != 0xffffffff) {
			/* enable BM */
			FUNC4(adev->pdev);
			adev->has_hw_reset = true;
			return 0;
		}
		FUNC5(1);
	}
	return -EINVAL;
}