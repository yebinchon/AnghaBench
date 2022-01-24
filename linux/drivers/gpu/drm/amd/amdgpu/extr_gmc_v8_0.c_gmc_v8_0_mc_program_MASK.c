#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int vram_start; int vram_end; } ;
struct TYPE_5__ {int gpu_addr; } ;
struct TYPE_4__ {scalar_t__ num_crtc; } ;
struct amdgpu_device {int /*<<< orphan*/  dev; TYPE_3__ gmc; TYPE_2__ vram_scratch; TYPE_1__ mode_info; } ;

/* Variables and functions */
 int BIF_FB_EN__FB_READ_EN_MASK ; 
 int BIF_FB_EN__FB_WRITE_EN_MASK ; 
 int /*<<< orphan*/  FLUSH_INVALIDATE_CACHE ; 
 int /*<<< orphan*/  HDP_MISC_CNTL ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  VGA_HDP_CONTROL ; 
 int /*<<< orphan*/  VGA_MEMORY_DISABLE ; 
 int /*<<< orphan*/  VGA_RENDER_CONTROL ; 
 int /*<<< orphan*/  VGA_VSTATUS_CNTL ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (void*) ; 
 int mmBIF_FB_EN ; 
 int mmHDP_HOST_PATH_CNTL ; 
 int mmHDP_MISC_CNTL ; 
 int mmHDP_NONSURFACE_BASE ; 
 int mmHDP_NONSURFACE_INFO ; 
 int mmHDP_NONSURFACE_SIZE ; 
 int mmHDP_REG_COHERENCY_FLUSH_CNTL ; 
 int mmMC_VM_AGP_BASE ; 
 int mmMC_VM_AGP_BOT ; 
 int mmMC_VM_AGP_TOP ; 
 int mmMC_VM_FB_LOCATION ; 
 int mmMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR ; 
 int mmMC_VM_SYSTEM_APERTURE_HIGH_ADDR ; 
 int mmMC_VM_SYSTEM_APERTURE_LOW_ADDR ; 
 int mmVGA_HDP_CONTROL ; 
 int mmVGA_RENDER_CONTROL ; 

__attribute__((used)) static void FUNC6(struct amdgpu_device *adev)
{
	u32 tmp;
	int i, j;

	/* Initialize HDP */
	for (i = 0, j = 0; i < 32; i++, j += 0x6) {
		FUNC2((0xb05 + j), 0x00000000);
		FUNC2((0xb06 + j), 0x00000000);
		FUNC2((0xb07 + j), 0x00000000);
		FUNC2((0xb08 + j), 0x00000000);
		FUNC2((0xb09 + j), 0x00000000);
	}
	FUNC2(mmHDP_REG_COHERENCY_FLUSH_CNTL, 0);

	if (FUNC5((void *)adev)) {
		FUNC4(adev->dev, "Wait for MC idle timedout !\n");
	}
	if (adev->mode_info.num_crtc) {
		/* Lockout access through VGA aperture*/
		tmp = FUNC1(mmVGA_HDP_CONTROL);
		tmp = FUNC0(tmp, VGA_HDP_CONTROL, VGA_MEMORY_DISABLE, 1);
		FUNC2(mmVGA_HDP_CONTROL, tmp);

		/* disable VGA render */
		tmp = FUNC1(mmVGA_RENDER_CONTROL);
		tmp = FUNC0(tmp, VGA_RENDER_CONTROL, VGA_VSTATUS_CNTL, 0);
		FUNC2(mmVGA_RENDER_CONTROL, tmp);
	}
	/* Update configuration */
	FUNC2(mmMC_VM_SYSTEM_APERTURE_LOW_ADDR,
	       adev->gmc.vram_start >> 12);
	FUNC2(mmMC_VM_SYSTEM_APERTURE_HIGH_ADDR,
	       adev->gmc.vram_end >> 12);
	FUNC2(mmMC_VM_SYSTEM_APERTURE_DEFAULT_ADDR,
	       adev->vram_scratch.gpu_addr >> 12);

	if (FUNC3(adev)) {
		tmp = ((adev->gmc.vram_end >> 24) & 0xFFFF) << 16;
		tmp |= ((adev->gmc.vram_start >> 24) & 0xFFFF);
		FUNC2(mmMC_VM_FB_LOCATION, tmp);
		/* XXX double check these! */
		FUNC2(mmHDP_NONSURFACE_BASE, (adev->gmc.vram_start >> 8));
		FUNC2(mmHDP_NONSURFACE_INFO, (2 << 7) | (1 << 30));
		FUNC2(mmHDP_NONSURFACE_SIZE, 0x3FFFFFFF);
	}

	FUNC2(mmMC_VM_AGP_BASE, 0);
	FUNC2(mmMC_VM_AGP_TOP, 0x0FFFFFFF);
	FUNC2(mmMC_VM_AGP_BOT, 0x0FFFFFFF);
	if (FUNC5((void *)adev)) {
		FUNC4(adev->dev, "Wait for MC idle timedout !\n");
	}

	FUNC2(mmBIF_FB_EN, BIF_FB_EN__FB_READ_EN_MASK | BIF_FB_EN__FB_WRITE_EN_MASK);

	tmp = FUNC1(mmHDP_MISC_CNTL);
	tmp = FUNC0(tmp, HDP_MISC_CNTL, FLUSH_INVALIDATE_CACHE, 0);
	FUNC2(mmHDP_MISC_CNTL, tmp);

	tmp = FUNC1(mmHDP_HOST_PATH_CNTL);
	FUNC2(mmHDP_HOST_PATH_CNTL, tmp);
}