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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ num_crtc; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;

/* Variables and functions */
 int BUS_CNTL__BIOS_ROM_DIS_MASK ; 
 int D1VGA_CONTROL__D1VGA_MODE_ENABLE_MASK ; 
 int D1VGA_CONTROL__D1VGA_TIMING_SELECT_MASK ; 
 int D2VGA_CONTROL__D2VGA_MODE_ENABLE_MASK ; 
 int D2VGA_CONTROL__D2VGA_TIMING_SELECT_MASK ; 
 int ROM_CNTL__SCK_OVERWRITE_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int VGA_RENDER_CONTROL__VGA_VSTATUS_CNTL_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  ixROM_CNTL ; 
 int /*<<< orphan*/  mmBUS_CNTL ; 
 int /*<<< orphan*/  mmD1VGA_CONTROL ; 
 int /*<<< orphan*/  mmD2VGA_CONTROL ; 
 int /*<<< orphan*/  mmVGA_RENDER_CONTROL ; 

__attribute__((used)) static bool FUNC5(struct amdgpu_device *adev)
{
	u32 bus_cntl;
	u32 d1vga_control = 0;
	u32 d2vga_control = 0;
	u32 vga_render_control = 0;
	u32 rom_cntl;
	bool r;

	bus_cntl = FUNC0(mmBUS_CNTL);
	if (adev->mode_info.num_crtc) {
		d1vga_control = FUNC0(mmD1VGA_CONTROL);
		d2vga_control = FUNC0(mmD2VGA_CONTROL);
		vga_render_control = FUNC0(mmVGA_RENDER_CONTROL);
	}
	rom_cntl = FUNC1(ixROM_CNTL);

	/* enable the rom */
	FUNC2(mmBUS_CNTL, (bus_cntl & ~BUS_CNTL__BIOS_ROM_DIS_MASK));
	if (adev->mode_info.num_crtc) {
		/* Disable VGA mode */
		FUNC2(mmD1VGA_CONTROL,
		       (d1vga_control & ~(D1VGA_CONTROL__D1VGA_MODE_ENABLE_MASK |
					  D1VGA_CONTROL__D1VGA_TIMING_SELECT_MASK)));
		FUNC2(mmD2VGA_CONTROL,
		       (d2vga_control & ~(D2VGA_CONTROL__D2VGA_MODE_ENABLE_MASK |
					  D2VGA_CONTROL__D2VGA_TIMING_SELECT_MASK)));
		FUNC2(mmVGA_RENDER_CONTROL,
		       (vga_render_control & ~VGA_RENDER_CONTROL__VGA_VSTATUS_CNTL_MASK));
	}
	FUNC3(ixROM_CNTL, rom_cntl | ROM_CNTL__SCK_OVERWRITE_MASK);

	r = FUNC4(adev);

	/* restore regs */
	FUNC2(mmBUS_CNTL, bus_cntl);
	if (adev->mode_info.num_crtc) {
		FUNC2(mmD1VGA_CONTROL, d1vga_control);
		FUNC2(mmD2VGA_CONTROL, d2vga_control);
		FUNC2(mmVGA_RENDER_CONTROL, vga_render_control);
	}
	FUNC3(ixROM_CNTL, rom_cntl);
	return r;
}