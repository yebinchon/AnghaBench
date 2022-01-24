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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {unsigned int real_vram_size; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;

/* Variables and functions */
 int /*<<< orphan*/  D1VGA_CONTROL ; 
 int /*<<< orphan*/  D1VGA_MODE_ENABLE ; 
 int /*<<< orphan*/  DCE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  HUBP0_DCSURF_PRI_VIEWPORT_DIMENSION ; 
 int /*<<< orphan*/  HUBPREQ0_DCSURF_SURFACE_PITCH ; 
 int /*<<< orphan*/  PITCH ; 
 int /*<<< orphan*/  PRI_VIEWPORT_HEIGHT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmD1VGA_CONTROL ; 
 int /*<<< orphan*/  mmHUBP0_DCSURF_PRI_VIEWPORT_DIMENSION ; 
 int /*<<< orphan*/  mmHUBPREQ0_DCSURF_SURFACE_PITCH ; 

__attribute__((used)) static unsigned FUNC3(struct amdgpu_device *adev)
{
	u32 d1vga_control = FUNC2(DCE, 0, mmD1VGA_CONTROL);
	unsigned size;

	if (FUNC1(d1vga_control, D1VGA_CONTROL, D1VGA_MODE_ENABLE)) {
		size = 9 * 1024 * 1024; /* reserve 8MB for vga emulator and 1 MB for FB */
	} else {
		u32 viewport;
		u32 pitch;

		viewport = FUNC2(DCE, 0, mmHUBP0_DCSURF_PRI_VIEWPORT_DIMENSION);
		pitch = FUNC2(DCE, 0, mmHUBPREQ0_DCSURF_SURFACE_PITCH);
		size = (FUNC1(viewport,
					HUBP0_DCSURF_PRI_VIEWPORT_DIMENSION, PRI_VIEWPORT_HEIGHT) *
				FUNC1(pitch, HUBPREQ0_DCSURF_SURFACE_PITCH, PITCH) *
				4);
	}
	/* return 0 if the pre-OS buffer uses up most of vram */
	if ((adev->gmc.real_vram_size - size) < (8 * 1024 * 1024)) {
		FUNC0("Warning: pre-OS buffer uses most of vram, \
				be aware of gart table overwrite\n");
		return 0;
	}

	return size;
}