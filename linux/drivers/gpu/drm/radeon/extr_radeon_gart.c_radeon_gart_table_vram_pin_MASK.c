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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {int num_gpu_pages; int /*<<< orphan*/ * pages_entry; int /*<<< orphan*/  table_addr; int /*<<< orphan*/  robj; int /*<<< orphan*/  ptr; } ;
struct radeon_device {TYPE_1__ gart; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_VRAM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(struct radeon_device *rdev)
{
	uint64_t gpu_addr;
	int r;

	r = FUNC3(rdev->gart.robj, false);
	if (FUNC8(r != 0))
		return r;
	r = FUNC2(rdev->gart.robj,
				RADEON_GEM_DOMAIN_VRAM, &gpu_addr);
	if (r) {
		FUNC5(rdev->gart.robj);
		return r;
	}
	r = FUNC1(rdev->gart.robj, &rdev->gart.ptr);
	if (r)
		FUNC4(rdev->gart.robj);
	FUNC5(rdev->gart.robj);
	rdev->gart.table_addr = gpu_addr;

	if (!r) {
		int i;

		/* We might have dropped some GART table updates while it wasn't
		 * mapped, restore all entries
		 */
		for (i = 0; i < rdev->gart.num_gpu_pages; i++)
			FUNC6(rdev, i, rdev->gart.pages_entry[i]);
		FUNC0();
		FUNC7(rdev);
	}

	return r;
}