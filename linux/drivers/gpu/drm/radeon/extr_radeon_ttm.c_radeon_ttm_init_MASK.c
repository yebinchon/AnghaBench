#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int real_vram_size; int gtt_size; int /*<<< orphan*/  visible_vram_size; } ;
struct TYPE_9__ {int initialized; int /*<<< orphan*/  bdev; } ;
struct radeon_device {TYPE_5__ mc; TYPE_4__ mman; int /*<<< orphan*/  stolen_vga_memory; TYPE_3__* pdev; TYPE_2__* ddev; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {TYPE_1__* anon_inode; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_VRAM ; 
 int /*<<< orphan*/  TTM_PL_TT ; 
 int /*<<< orphan*/  TTM_PL_VRAM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct radeon_device*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  radeon_bo_driver ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC12(struct radeon_device *rdev)
{
	int r;

	/* No others user of address space so set it to 0 */
	r = FUNC10(&rdev->mman.bdev,
			       &radeon_bo_driver,
			       rdev->ddev->anon_inode->i_mapping,
			       FUNC2(&rdev->pdev->dev));
	if (r) {
		FUNC0("failed initializing buffer object driver(%d).\n", r);
		return r;
	}
	rdev->mman.initialized = true;
	r = FUNC11(&rdev->mman.bdev, TTM_PL_VRAM,
				rdev->mc.real_vram_size >> PAGE_SHIFT);
	if (r) {
		FUNC0("Failed initializing VRAM heap.\n");
		return r;
	}
	/* Change the size here instead of the init above so only lpfn is affected */
	FUNC9(rdev, rdev->mc.visible_vram_size);

	r = FUNC3(rdev, 256 * 1024, PAGE_SIZE, true,
			     RADEON_GEM_DOMAIN_VRAM, 0, NULL,
			     NULL, &rdev->stolen_vga_memory);
	if (r) {
		return r;
	}
	r = FUNC5(rdev->stolen_vga_memory, false);
	if (r)
		return r;
	r = FUNC4(rdev->stolen_vga_memory, RADEON_GEM_DOMAIN_VRAM, NULL);
	FUNC7(rdev->stolen_vga_memory);
	if (r) {
		FUNC6(&rdev->stolen_vga_memory);
		return r;
	}
	FUNC1("radeon: %uM of VRAM memory ready\n",
		 (unsigned) (rdev->mc.real_vram_size / (1024 * 1024)));
	r = FUNC11(&rdev->mman.bdev, TTM_PL_TT,
				rdev->mc.gtt_size >> PAGE_SHIFT);
	if (r) {
		FUNC0("Failed initializing GTT heap.\n");
		return r;
	}
	FUNC1("radeon: %uM of GTT memory ready.\n",
		 (unsigned)(rdev->mc.gtt_size / (1024 * 1024)));

	r = FUNC8(rdev);
	if (r) {
		FUNC0("Failed to init debugfs\n");
		return r;
	}
	return 0;
}