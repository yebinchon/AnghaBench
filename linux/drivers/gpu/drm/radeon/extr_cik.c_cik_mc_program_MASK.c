#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int vram_start; int vram_end; } ;
struct TYPE_3__ {int gpu_addr; } ;
struct radeon_device {int /*<<< orphan*/  dev; TYPE_2__ mc; TYPE_1__ vram_scratch; } ;
struct evergreen_mc_save {int dummy; } ;

/* Variables and functions */
 int HDP_NONSURFACE_BASE ; 
 int HDP_NONSURFACE_INFO ; 
 int HDP_NONSURFACE_SIZE ; 
 int HDP_REG_COHERENCY_FLUSH_CNTL ; 
 int MC_VM_AGP_BASE ; 
 int MC_VM_AGP_BOT ; 
 int MC_VM_AGP_TOP ; 
 int MC_VM_FB_LOCATION ; 
 int MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR ; 
 int MC_VM_SYSTEM_APERTURE_HIGH_ADDR ; 
 int MC_VM_SYSTEM_APERTURE_LOW_ADDR ; 
 int VGA_HDP_CONTROL ; 
 int VGA_MEMORY_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,struct evergreen_mc_save*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,struct evergreen_mc_save*) ; 
 scalar_t__ FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC6(struct radeon_device *rdev)
{
	struct evergreen_mc_save save;
	u32 tmp;
	int i, j;

	/* Initialize HDP */
	for (i = 0, j = 0; i < 32; i++, j += 0x18) {
		FUNC0((0x2c14 + j), 0x00000000);
		FUNC0((0x2c18 + j), 0x00000000);
		FUNC0((0x2c1c + j), 0x00000000);
		FUNC0((0x2c20 + j), 0x00000000);
		FUNC0((0x2c24 + j), 0x00000000);
	}
	FUNC0(HDP_REG_COHERENCY_FLUSH_CNTL, 0);

	FUNC3(rdev, &save);
	if (FUNC4(rdev)) {
		FUNC1(rdev->dev, "Wait for MC idle timedout !\n");
	}
	/* Lockout access through VGA aperture*/
	FUNC0(VGA_HDP_CONTROL, VGA_MEMORY_DISABLE);
	/* Update configuration */
	FUNC0(MC_VM_SYSTEM_APERTURE_LOW_ADDR,
	       rdev->mc.vram_start >> 12);
	FUNC0(MC_VM_SYSTEM_APERTURE_HIGH_ADDR,
	       rdev->mc.vram_end >> 12);
	FUNC0(MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR,
	       rdev->vram_scratch.gpu_addr >> 12);
	tmp = ((rdev->mc.vram_end >> 24) & 0xFFFF) << 16;
	tmp |= ((rdev->mc.vram_start >> 24) & 0xFFFF);
	FUNC0(MC_VM_FB_LOCATION, tmp);
	/* XXX double check these! */
	FUNC0(HDP_NONSURFACE_BASE, (rdev->mc.vram_start >> 8));
	FUNC0(HDP_NONSURFACE_INFO, (2 << 7) | (1 << 30));
	FUNC0(HDP_NONSURFACE_SIZE, 0x3FFFFFFF);
	FUNC0(MC_VM_AGP_BASE, 0);
	FUNC0(MC_VM_AGP_TOP, 0x0FFFFFFF);
	FUNC0(MC_VM_AGP_BOT, 0x0FFFFFFF);
	if (FUNC4(rdev)) {
		FUNC1(rdev->dev, "Wait for MC idle timedout !\n");
	}
	FUNC2(rdev, &save);
	/* we need to own VRAM, so turn off the VGA renderer here
	 * to stop it overwriting our objects */
	FUNC5(rdev);
}