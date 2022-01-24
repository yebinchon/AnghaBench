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
 int /*<<< orphan*/  AVIVO_D1VGA_CONTROL ; 
 int /*<<< orphan*/  AVIVO_D2VGA_CONTROL ; 
 int AVIVO_DVGA_CONTROL_MODE_ENABLE ; 
 int AVIVO_DVGA_CONTROL_TIMING_SELECT ; 
 int C_000300_VGA_VSTATUS_CNTL ; 
 int R600_BIOS_ROM_DIS ; 
 int /*<<< orphan*/  R600_BUS_CNTL ; 
 int /*<<< orphan*/  R600_ROM_CNTL ; 
 int R600_SCK_OVERWRITE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VGA_RENDER_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct amdgpu_device*) ; 

__attribute__((used)) static bool FUNC3(struct amdgpu_device *adev)
{
	u32 bus_cntl;
	u32 d1vga_control = 0;
	u32 d2vga_control = 0;
	u32 vga_render_control = 0;
	u32 rom_cntl;
	bool r;

	bus_cntl = FUNC0(R600_BUS_CNTL);
	if (adev->mode_info.num_crtc) {
		d1vga_control = FUNC0(AVIVO_D1VGA_CONTROL);
		d2vga_control = FUNC0(AVIVO_D2VGA_CONTROL);
		vga_render_control = FUNC0(VGA_RENDER_CONTROL);
	}
	rom_cntl = FUNC0(R600_ROM_CNTL);

	/* enable the rom */
	FUNC1(R600_BUS_CNTL, (bus_cntl & ~R600_BIOS_ROM_DIS));
	if (adev->mode_info.num_crtc) {
		/* Disable VGA mode */
		FUNC1(AVIVO_D1VGA_CONTROL,
		       (d1vga_control & ~(AVIVO_DVGA_CONTROL_MODE_ENABLE |
					  AVIVO_DVGA_CONTROL_TIMING_SELECT)));
		FUNC1(AVIVO_D2VGA_CONTROL,
		       (d2vga_control & ~(AVIVO_DVGA_CONTROL_MODE_ENABLE |
					  AVIVO_DVGA_CONTROL_TIMING_SELECT)));
		FUNC1(VGA_RENDER_CONTROL,
		       (vga_render_control & C_000300_VGA_VSTATUS_CNTL));
	}
	FUNC1(R600_ROM_CNTL, rom_cntl | R600_SCK_OVERWRITE);

	r = FUNC2(adev);

	/* restore regs */
	FUNC1(R600_BUS_CNTL, bus_cntl);
	if (adev->mode_info.num_crtc) {
		FUNC1(AVIVO_D1VGA_CONTROL, d1vga_control);
		FUNC1(AVIVO_D2VGA_CONTROL, d2vga_control);
		FUNC1(VGA_RENDER_CONTROL, vga_render_control);
	}
	FUNC1(R600_ROM_CNTL, rom_cntl);
	return r;
}