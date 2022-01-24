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
typedef  int uint8_t ;
typedef  scalar_t__ uint16_t ;
struct radeon_encoder_tv_dac {int ps2_tvdac_adj; int pal_tvdac_adj; int ntsc_tvdac_adj; int /*<<< orphan*/  tv_std; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct radeon_encoder {TYPE_1__ base; } ;
struct radeon_device {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMBIOS_CRT_INFO_TABLE ; 
 int /*<<< orphan*/  COMBIOS_TV_INFO_TABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct drm_device*,int /*<<< orphan*/ ) ; 
 struct radeon_encoder_tv_dac* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,struct radeon_encoder_tv_dac*) ; 

struct radeon_encoder_tv_dac *FUNC6(struct
							     radeon_encoder
							     *encoder)
{
	struct drm_device *dev = encoder->base.dev;
	struct radeon_device *rdev = dev->dev_private;
	uint16_t dac_info;
	uint8_t rev, bg, dac;
	struct radeon_encoder_tv_dac *tv_dac = NULL;
	int found = 0;

	tv_dac = FUNC3(sizeof(struct radeon_encoder_tv_dac), GFP_KERNEL);
	if (!tv_dac)
		return NULL;

	/* first check TV table */
	dac_info = FUNC2(dev, COMBIOS_TV_INFO_TABLE);
	if (dac_info) {
		rev = FUNC1(dac_info + 0x3);
		if (rev > 4) {
			bg = FUNC1(dac_info + 0xc) & 0xf;
			dac = FUNC1(dac_info + 0xd) & 0xf;
			tv_dac->ps2_tvdac_adj = (bg << 16) | (dac << 20);

			bg = FUNC1(dac_info + 0xe) & 0xf;
			dac = FUNC1(dac_info + 0xf) & 0xf;
			tv_dac->pal_tvdac_adj = (bg << 16) | (dac << 20);

			bg = FUNC1(dac_info + 0x10) & 0xf;
			dac = FUNC1(dac_info + 0x11) & 0xf;
			tv_dac->ntsc_tvdac_adj = (bg << 16) | (dac << 20);
			/* if the values are all zeros, use the table */
			if (tv_dac->ps2_tvdac_adj)
				found = 1;
		} else if (rev > 1) {
			bg = FUNC1(dac_info + 0xc) & 0xf;
			dac = (FUNC1(dac_info + 0xc) >> 4) & 0xf;
			tv_dac->ps2_tvdac_adj = (bg << 16) | (dac << 20);

			bg = FUNC1(dac_info + 0xd) & 0xf;
			dac = (FUNC1(dac_info + 0xd) >> 4) & 0xf;
			tv_dac->pal_tvdac_adj = (bg << 16) | (dac << 20);

			bg = FUNC1(dac_info + 0xe) & 0xf;
			dac = (FUNC1(dac_info + 0xe) >> 4) & 0xf;
			tv_dac->ntsc_tvdac_adj = (bg << 16) | (dac << 20);
			/* if the values are all zeros, use the table */
			if (tv_dac->ps2_tvdac_adj)
				found = 1;
		}
		tv_dac->tv_std = FUNC4(rdev);
	}
	if (!found) {
		/* then check CRT table */
		dac_info =
		    FUNC2(dev, COMBIOS_CRT_INFO_TABLE);
		if (dac_info) {
			rev = FUNC1(dac_info) & 0x3;
			if (rev < 2) {
				bg = FUNC1(dac_info + 0x3) & 0xf;
				dac = (FUNC1(dac_info + 0x3) >> 4) & 0xf;
				tv_dac->ps2_tvdac_adj =
				    (bg << 16) | (dac << 20);
				tv_dac->pal_tvdac_adj = tv_dac->ps2_tvdac_adj;
				tv_dac->ntsc_tvdac_adj = tv_dac->ps2_tvdac_adj;
				/* if the values are all zeros, use the table */
				if (tv_dac->ps2_tvdac_adj)
					found = 1;
			} else {
				bg = FUNC1(dac_info + 0x4) & 0xf;
				dac = FUNC1(dac_info + 0x5) & 0xf;
				tv_dac->ps2_tvdac_adj =
				    (bg << 16) | (dac << 20);
				tv_dac->pal_tvdac_adj = tv_dac->ps2_tvdac_adj;
				tv_dac->ntsc_tvdac_adj = tv_dac->ps2_tvdac_adj;
				/* if the values are all zeros, use the table */
				if (tv_dac->ps2_tvdac_adj)
					found = 1;
			}
		} else {
			FUNC0("No TV DAC info found in BIOS\n");
		}
	}

	if (!found) /* fallback to defaults */
		FUNC5(rdev, tv_dac);

	return tv_dac;
}