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
typedef  void* uint8_t ;
typedef  scalar_t__ uint16_t ;
struct radeon_i2c_bus_rec {int valid; int hw_capable; int mm_i2c; int i2c_id; } ;
struct radeon_encoder_ext_tmds {int slave_addr; int /*<<< orphan*/ * i2c_bus; int /*<<< orphan*/  dvo_chip; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct radeon_encoder {TYPE_1__ base; } ;
struct radeon_device {int flags; } ;
struct drm_device {struct radeon_device* dev_private; } ;
typedef  enum radeon_combios_ddc { ____Placeholder_radeon_combios_ddc } radeon_combios_ddc ;

/* Variables and functions */
 int /*<<< orphan*/  COMBIOS_EXT_TMDS_INFO_TABLE ; 
 int DDC_LCD ; 
 int DDC_MONID ; 
 int /*<<< orphan*/  FUNC0 (char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  DVO_SIL164 ; 
 int RADEON_IS_IGP ; 
 void* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct drm_device*,int /*<<< orphan*/ ) ; 
 struct radeon_i2c_bus_rec FUNC4 (struct radeon_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct radeon_device*,struct radeon_i2c_bus_rec*) ; 

bool FUNC6(struct radeon_encoder *encoder,
						  struct radeon_encoder_ext_tmds *tmds)
{
	struct drm_device *dev = encoder->base.dev;
	struct radeon_device *rdev = dev->dev_private;
	uint16_t offset;
	uint8_t ver;
	enum radeon_combios_ddc gpio;
	struct radeon_i2c_bus_rec i2c_bus;

	tmds->i2c_bus = NULL;
	if (rdev->flags & RADEON_IS_IGP) {
		i2c_bus = FUNC4(rdev, DDC_MONID, 0, 0);
		tmds->i2c_bus = FUNC5(rdev, &i2c_bus);
		tmds->dvo_chip = DVO_SIL164;
		tmds->slave_addr = 0x70 >> 1; /* 7 bit addressing */
	} else {
		offset = FUNC3(dev, COMBIOS_EXT_TMDS_INFO_TABLE);
		if (offset) {
			ver = FUNC2(offset);
			FUNC0("External TMDS Table revision: %d\n", ver);
			tmds->slave_addr = FUNC2(offset + 4 + 2);
			tmds->slave_addr >>= 1; /* 7 bit addressing */
			gpio = FUNC2(offset + 4 + 3);
			if (gpio == DDC_LCD) {
				/* MM i2c */
				i2c_bus.valid = true;
				i2c_bus.hw_capable = true;
				i2c_bus.mm_i2c = true;
				i2c_bus.i2c_id = 0xa0;
			} else
				i2c_bus = FUNC4(rdev, gpio, 0, 0);
			tmds->i2c_bus = FUNC5(rdev, &i2c_bus);
		}
	}

	if (!tmds->i2c_bus) {
		FUNC1("No valid Ext TMDS info found in BIOS\n");
		return false;
	}

	return true;
}