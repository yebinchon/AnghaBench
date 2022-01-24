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
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int RADEON_ACC_MODE_CHANGE ; 
 int /*<<< orphan*/  RADEON_BIOS_0_SCRATCH ; 
 int /*<<< orphan*/  RADEON_BIOS_6_SCRATCH ; 
 int /*<<< orphan*/  RADEON_BIOS_7_SCRATCH ; 
 int RADEON_DISPLAY_SWITCHING_DIS ; 
 int RADEON_DRIVER_BRIGHTNESS_EN ; 
 int RADEON_DRV_LOADED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(struct drm_device *dev)
{
	struct radeon_device *rdev = dev->dev_private;
	uint32_t bios_0_scratch, bios_6_scratch, bios_7_scratch;

	bios_0_scratch = FUNC0(RADEON_BIOS_0_SCRATCH);
	bios_6_scratch = FUNC0(RADEON_BIOS_6_SCRATCH);
	bios_7_scratch = FUNC0(RADEON_BIOS_7_SCRATCH);

	/* let the bios control the backlight */
	bios_0_scratch &= ~RADEON_DRIVER_BRIGHTNESS_EN;

	/* tell the bios not to handle mode switching */
	bios_6_scratch |= (RADEON_DISPLAY_SWITCHING_DIS |
			   RADEON_ACC_MODE_CHANGE);

	/* tell the bios a driver is loaded */
	bios_7_scratch |= RADEON_DRV_LOADED;

	FUNC1(RADEON_BIOS_0_SCRATCH, bios_0_scratch);
	FUNC1(RADEON_BIOS_6_SCRATCH, bios_6_scratch);
	FUNC1(RADEON_BIOS_7_SCRATCH, bios_7_scratch);
}