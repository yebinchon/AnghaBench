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
struct TYPE_3__ {int vram_is_ddr; int vram_width; scalar_t__ gtt_size; scalar_t__ gtt_base_align; int /*<<< orphan*/  igp_sideport_enabled; } ;
struct radeon_device {TYPE_1__ mc; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADEON_NB_TOM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC7(struct radeon_device *rdev)
{
	u64 base;

	FUNC6(rdev);
	rdev->mc.igp_sideport_enabled = FUNC2(rdev);
	/* DDR for all card after R300 & IGP */
	rdev->mc.vram_is_ddr = true;
	rdev->mc.vram_width = 128;
	FUNC1(rdev);
	base = (FUNC0(RADEON_NB_TOM) & 0xffff) << 16;
	FUNC5(rdev, &rdev->mc, base);
	rdev->mc.gtt_base_align = rdev->mc.gtt_size - 1;
	FUNC3(rdev, &rdev->mc);
	FUNC4(rdev);
}