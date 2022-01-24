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
typedef  int u32 ;
struct radeon_device {int num_crtc; int usec_timeout; } ;
struct evergreen_mc_save {int vga_render_control; int vga_hdp_control; int* crtc_enabled; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 scalar_t__ BIF_FB_EN ; 
 int BLACKOUT_MODE_MASK ; 
 scalar_t__ EVERGREEN_CRTC_BLANK_CONTROL ; 
 int EVERGREEN_CRTC_BLANK_DATA_EN ; 
 scalar_t__ EVERGREEN_CRTC_CONTROL ; 
 int EVERGREEN_CRTC_DISP_READ_REQUEST_DISABLE ; 
 int EVERGREEN_CRTC_MASTER_EN ; 
 scalar_t__ EVERGREEN_CRTC_UPDATE_LOCK ; 
 scalar_t__ EVERGREEN_GRPH_UPDATE ; 
 int EVERGREEN_GRPH_UPDATE_LOCK ; 
 scalar_t__ EVERGREEN_MASTER_UPDATE_LOCK ; 
 scalar_t__ MC_SHARED_BLACKOUT_CNTL ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ VGA_HDP_CONTROL ; 
 scalar_t__ VGA_RENDER_CONTROL ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 scalar_t__* crtc_offsets ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,unsigned int) ; 
 scalar_t__ FUNC6 (struct radeon_device*,int,unsigned int*) ; 
 int FUNC7 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

void FUNC11(struct radeon_device *rdev, struct evergreen_mc_save *save)
{
	u32 crtc_enabled, tmp, frame_count, blackout;
	int i, j;
	unsigned dig_fe;

	if (!FUNC2(rdev)) {
		save->vga_render_control = FUNC3(VGA_RENDER_CONTROL);
		save->vga_hdp_control = FUNC3(VGA_HDP_CONTROL);

		/* disable VGA render */
		FUNC4(VGA_RENDER_CONTROL, 0);
	}
	/* blank the display controllers */
	for (i = 0; i < rdev->num_crtc; i++) {
		crtc_enabled = FUNC3(EVERGREEN_CRTC_CONTROL + crtc_offsets[i]) & EVERGREEN_CRTC_MASTER_EN;
		if (crtc_enabled) {
			save->crtc_enabled[i] = true;
			if (FUNC1(rdev)) {
				tmp = FUNC3(EVERGREEN_CRTC_BLANK_CONTROL + crtc_offsets[i]);
				if (!(tmp & EVERGREEN_CRTC_BLANK_DATA_EN)) {
					FUNC9(rdev, i);
					FUNC4(EVERGREEN_CRTC_UPDATE_LOCK + crtc_offsets[i], 1);
					tmp |= EVERGREEN_CRTC_BLANK_DATA_EN;
					FUNC4(EVERGREEN_CRTC_BLANK_CONTROL + crtc_offsets[i], tmp);
					FUNC4(EVERGREEN_CRTC_UPDATE_LOCK + crtc_offsets[i], 0);
				}
			} else {
				tmp = FUNC3(EVERGREEN_CRTC_CONTROL + crtc_offsets[i]);
				if (!(tmp & EVERGREEN_CRTC_DISP_READ_REQUEST_DISABLE)) {
					FUNC9(rdev, i);
					FUNC4(EVERGREEN_CRTC_UPDATE_LOCK + crtc_offsets[i], 1);
					tmp |= EVERGREEN_CRTC_DISP_READ_REQUEST_DISABLE;
					FUNC4(EVERGREEN_CRTC_CONTROL + crtc_offsets[i], tmp);
					FUNC4(EVERGREEN_CRTC_UPDATE_LOCK + crtc_offsets[i], 0);
				}
			}
			/* wait for the next frame */
			frame_count = FUNC7(rdev, i);
			for (j = 0; j < rdev->usec_timeout; j++) {
				if (FUNC7(rdev, i) != frame_count)
					break;
				FUNC10(1);
			}
			/*we should disable dig if it drives dp sst*/
			/*but we are in radeon_device_init and the topology is unknown*/
			/*and it is available after radeon_modeset_init*/
			/*the following method radeon_atom_encoder_dpms_dig*/
			/*does the job if we initialize it properly*/
			/*for now we do it this manually*/
			/**/
			if (FUNC0(rdev) &&
			    FUNC6(rdev, i ,&dig_fe))
				FUNC5(rdev, dig_fe);
			/*we could remove 6 lines below*/
			/* XXX this is a hack to avoid strange behavior with EFI on certain systems */
			FUNC4(EVERGREEN_CRTC_UPDATE_LOCK + crtc_offsets[i], 1);
			tmp = FUNC3(EVERGREEN_CRTC_CONTROL + crtc_offsets[i]);
			tmp &= ~EVERGREEN_CRTC_MASTER_EN;
			FUNC4(EVERGREEN_CRTC_CONTROL + crtc_offsets[i], tmp);
			FUNC4(EVERGREEN_CRTC_UPDATE_LOCK + crtc_offsets[i], 0);
			save->crtc_enabled[i] = false;
			/* ***** */
		} else {
			save->crtc_enabled[i] = false;
		}
	}

	FUNC8(rdev);

	blackout = FUNC3(MC_SHARED_BLACKOUT_CNTL);
	if ((blackout & BLACKOUT_MODE_MASK) != 1) {
		/* Block CPU access */
		FUNC4(BIF_FB_EN, 0);
		/* blackout the MC */
		blackout &= ~BLACKOUT_MODE_MASK;
		FUNC4(MC_SHARED_BLACKOUT_CNTL, blackout | 1);
	}
	/* wait for the MC to settle */
	FUNC10(100);

	/* lock double buffered regs */
	for (i = 0; i < rdev->num_crtc; i++) {
		if (save->crtc_enabled[i]) {
			tmp = FUNC3(EVERGREEN_GRPH_UPDATE + crtc_offsets[i]);
			if (!(tmp & EVERGREEN_GRPH_UPDATE_LOCK)) {
				tmp |= EVERGREEN_GRPH_UPDATE_LOCK;
				FUNC4(EVERGREEN_GRPH_UPDATE + crtc_offsets[i], tmp);
			}
			tmp = FUNC3(EVERGREEN_MASTER_UPDATE_LOCK + crtc_offsets[i]);
			if (!(tmp & 1)) {
				tmp |= 1;
				FUNC4(EVERGREEN_MASTER_UPDATE_LOCK + crtc_offsets[i], tmp);
			}
		}
	}
}