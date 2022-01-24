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
typedef  int uint32_t ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVIVO_D1VGA_CONTROL ; 
 int /*<<< orphan*/  AVIVO_D2VGA_CONTROL ; 
 int AVIVO_DVGA_CONTROL_MODE_ENABLE ; 
 int AVIVO_DVGA_CONTROL_TIMING_SELECT ; 
 int /*<<< orphan*/  AVIVO_VGA_RENDER_CONTROL ; 
 int AVIVO_VGA_VSTATUS_CNTL_MASK ; 
 int R600_BIOS_ROM_DIS ; 
 int /*<<< orphan*/  R600_BUS_CNTL ; 
 int /*<<< orphan*/  R600_CTXSW_VID_LOWER_GPIO_CNTL ; 
 int /*<<< orphan*/  R600_GENERAL_PWRMGT ; 
 int /*<<< orphan*/  R600_HIGH_VID_LOWER_GPIO_CNTL ; 
 int /*<<< orphan*/  R600_LOWER_GPIO_ENABLE ; 
 int /*<<< orphan*/  R600_LOW_VID_LOWER_GPIO_CNTL ; 
 int /*<<< orphan*/  R600_MEDIUM_VID_LOWER_GPIO_CNTL ; 
 int R600_OPEN_DRAIN_PADS ; 
 int /*<<< orphan*/  R600_ROM_CNTL ; 
 int R600_SCK_OVERWRITE ; 
 int R600_SCK_PRESCALE_CRYSTAL_CLK_MASK ; 
 int R600_SCK_PRESCALE_CRYSTAL_CLK_SHIFT ; 
 int /*<<< orphan*/  RADEON_VIPH_CONTROL ; 
 int RADEON_VIPH_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct radeon_device*) ; 

__attribute__((used)) static bool FUNC3(struct radeon_device *rdev)
{
	uint32_t viph_control;
	uint32_t bus_cntl;
	uint32_t d1vga_control;
	uint32_t d2vga_control;
	uint32_t vga_render_control;
	uint32_t rom_cntl;
	uint32_t general_pwrmgt;
	uint32_t low_vid_lower_gpio_cntl;
	uint32_t medium_vid_lower_gpio_cntl;
	uint32_t high_vid_lower_gpio_cntl;
	uint32_t ctxsw_vid_lower_gpio_cntl;
	uint32_t lower_gpio_enable;
	bool r;

	viph_control = FUNC0(RADEON_VIPH_CONTROL);
	bus_cntl = FUNC0(R600_BUS_CNTL);
	d1vga_control = FUNC0(AVIVO_D1VGA_CONTROL);
	d2vga_control = FUNC0(AVIVO_D2VGA_CONTROL);
	vga_render_control = FUNC0(AVIVO_VGA_RENDER_CONTROL);
	rom_cntl = FUNC0(R600_ROM_CNTL);
	general_pwrmgt = FUNC0(R600_GENERAL_PWRMGT);
	low_vid_lower_gpio_cntl = FUNC0(R600_LOW_VID_LOWER_GPIO_CNTL);
	medium_vid_lower_gpio_cntl = FUNC0(R600_MEDIUM_VID_LOWER_GPIO_CNTL);
	high_vid_lower_gpio_cntl = FUNC0(R600_HIGH_VID_LOWER_GPIO_CNTL);
	ctxsw_vid_lower_gpio_cntl = FUNC0(R600_CTXSW_VID_LOWER_GPIO_CNTL);
	lower_gpio_enable = FUNC0(R600_LOWER_GPIO_ENABLE);

	/* disable VIP */
	FUNC1(RADEON_VIPH_CONTROL, (viph_control & ~RADEON_VIPH_EN));
	/* enable the rom */
	FUNC1(R600_BUS_CNTL, (bus_cntl & ~R600_BIOS_ROM_DIS));
	/* Disable VGA mode */
	FUNC1(AVIVO_D1VGA_CONTROL,
	       (d1vga_control & ~(AVIVO_DVGA_CONTROL_MODE_ENABLE |
		AVIVO_DVGA_CONTROL_TIMING_SELECT)));
	FUNC1(AVIVO_D2VGA_CONTROL,
	       (d2vga_control & ~(AVIVO_DVGA_CONTROL_MODE_ENABLE |
		AVIVO_DVGA_CONTROL_TIMING_SELECT)));
	FUNC1(AVIVO_VGA_RENDER_CONTROL,
	       (vga_render_control & ~AVIVO_VGA_VSTATUS_CNTL_MASK));

	FUNC1(R600_ROM_CNTL,
	       ((rom_cntl & ~R600_SCK_PRESCALE_CRYSTAL_CLK_MASK) |
		(1 << R600_SCK_PRESCALE_CRYSTAL_CLK_SHIFT) |
		R600_SCK_OVERWRITE));

	FUNC1(R600_GENERAL_PWRMGT, (general_pwrmgt & ~R600_OPEN_DRAIN_PADS));
	FUNC1(R600_LOW_VID_LOWER_GPIO_CNTL,
	       (low_vid_lower_gpio_cntl & ~0x400));
	FUNC1(R600_MEDIUM_VID_LOWER_GPIO_CNTL,
	       (medium_vid_lower_gpio_cntl & ~0x400));
	FUNC1(R600_HIGH_VID_LOWER_GPIO_CNTL,
	       (high_vid_lower_gpio_cntl & ~0x400));
	FUNC1(R600_CTXSW_VID_LOWER_GPIO_CNTL,
	       (ctxsw_vid_lower_gpio_cntl & ~0x400));
	FUNC1(R600_LOWER_GPIO_ENABLE, (lower_gpio_enable | 0x400));

	r = FUNC2(rdev);

	/* restore regs */
	FUNC1(RADEON_VIPH_CONTROL, viph_control);
	FUNC1(R600_BUS_CNTL, bus_cntl);
	FUNC1(AVIVO_D1VGA_CONTROL, d1vga_control);
	FUNC1(AVIVO_D2VGA_CONTROL, d2vga_control);
	FUNC1(AVIVO_VGA_RENDER_CONTROL, vga_render_control);
	FUNC1(R600_ROM_CNTL, rom_cntl);
	FUNC1(R600_GENERAL_PWRMGT, general_pwrmgt);
	FUNC1(R600_LOW_VID_LOWER_GPIO_CNTL, low_vid_lower_gpio_cntl);
	FUNC1(R600_MEDIUM_VID_LOWER_GPIO_CNTL, medium_vid_lower_gpio_cntl);
	FUNC1(R600_HIGH_VID_LOWER_GPIO_CNTL, high_vid_lower_gpio_cntl);
	FUNC1(R600_CTXSW_VID_LOWER_GPIO_CNTL, ctxsw_vid_lower_gpio_cntl);
	FUNC1(R600_LOWER_GPIO_ENABLE, lower_gpio_enable);
	return r;
}