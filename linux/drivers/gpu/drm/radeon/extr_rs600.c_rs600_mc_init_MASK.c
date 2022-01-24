#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_3__ {int vram_is_ddr; int vram_width; scalar_t__ gtt_base_align; int /*<<< orphan*/  igp_sideport_enabled; int /*<<< orphan*/  aper_size; int /*<<< orphan*/  visible_vram_size; int /*<<< orphan*/  real_vram_size; int /*<<< orphan*/  mc_vram_size; int /*<<< orphan*/  aper_base; } ;
struct radeon_device {TYPE_1__ mc; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  RADEON_CONFIG_MEMSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R_000004_MC_FB_LOCATION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC9(struct radeon_device *rdev)
{
	u64 base;

	rdev->mc.aper_base = FUNC4(rdev->pdev, 0);
	rdev->mc.aper_size = FUNC3(rdev->pdev, 0);
	rdev->mc.vram_is_ddr = true;
	rdev->mc.vram_width = 128;
	rdev->mc.real_vram_size = FUNC1(RADEON_CONFIG_MEMSIZE);
	rdev->mc.mc_vram_size = rdev->mc.real_vram_size;
	rdev->mc.visible_vram_size = rdev->mc.aper_size;
	rdev->mc.igp_sideport_enabled = FUNC5(rdev);
	base = FUNC2(R_000004_MC_FB_LOCATION);
	base = FUNC0(base) << 16;
	FUNC8(rdev, &rdev->mc, base);
	rdev->mc.gtt_base_align = 0;
	FUNC6(rdev, &rdev->mc);
	FUNC7(rdev);
}