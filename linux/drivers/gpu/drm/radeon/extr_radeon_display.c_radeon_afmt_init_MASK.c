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
typedef  int uint32_t ;
struct TYPE_4__ {TYPE_1__** afmt; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ mode_info; } ;
struct radeon_afmt {int dummy; } ;
struct TYPE_3__ {int offset; int id; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 scalar_t__ FUNC2 (struct radeon_device*) ; 
 scalar_t__ FUNC3 (struct radeon_device*) ; 
 scalar_t__ FUNC4 (struct radeon_device*) ; 
 scalar_t__ FUNC5 (struct radeon_device*) ; 
 scalar_t__ FUNC6 (struct radeon_device*) ; 
 scalar_t__ FUNC7 (struct radeon_device*) ; 
 scalar_t__ FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ CHIP_R600 ; 
 int DCE2_HDMI_OFFSET0 ; 
 int DCE2_HDMI_OFFSET1 ; 
 int DCE3_HDMI_OFFSET0 ; 
 int DCE3_HDMI_OFFSET1 ; 
#define  EVERGREEN_CRTC0_REGISTER_OFFSET 133 
#define  EVERGREEN_CRTC1_REGISTER_OFFSET 132 
#define  EVERGREEN_CRTC2_REGISTER_OFFSET 131 
#define  EVERGREEN_CRTC3_REGISTER_OFFSET 130 
#define  EVERGREEN_CRTC4_REGISTER_OFFSET 129 
#define  EVERGREEN_CRTC5_REGISTER_OFFSET 128 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int RADEON_MAX_AFMT_BLOCKS ; 
 void* FUNC10 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct radeon_device *rdev)
{
	int i;

	for (i = 0; i < RADEON_MAX_AFMT_BLOCKS; i++)
		rdev->mode_info.afmt[i] = NULL;

	if (FUNC8(rdev)) {
		/* nothing to do */
	} else if (FUNC3(rdev)) {
		static uint32_t eg_offsets[] = {
			EVERGREEN_CRTC0_REGISTER_OFFSET,
			EVERGREEN_CRTC1_REGISTER_OFFSET,
			EVERGREEN_CRTC2_REGISTER_OFFSET,
			EVERGREEN_CRTC3_REGISTER_OFFSET,
			EVERGREEN_CRTC4_REGISTER_OFFSET,
			EVERGREEN_CRTC5_REGISTER_OFFSET,
			0x13830 - 0x7030,
		};
		int num_afmt;

		/* DCE8 has 7 audio blocks tied to DIG encoders */
		/* DCE6 has 6 audio blocks tied to DIG encoders */
		/* DCE4/5 has 6 audio blocks tied to DIG encoders */
		/* DCE4.1 has 2 audio blocks tied to DIG encoders */
		if (FUNC7(rdev))
			num_afmt = 7;
		else if (FUNC6(rdev))
			num_afmt = 6;
		else if (FUNC5(rdev))
			num_afmt = 6;
		else if (FUNC4(rdev))
			num_afmt = 2;
		else /* DCE4 */
			num_afmt = 6;

		FUNC9(num_afmt > FUNC0(eg_offsets));
		for (i = 0; i < num_afmt; i++) {
			rdev->mode_info.afmt[i] = FUNC10(sizeof(struct radeon_afmt), GFP_KERNEL);
			if (rdev->mode_info.afmt[i]) {
				rdev->mode_info.afmt[i]->offset = eg_offsets[i];
				rdev->mode_info.afmt[i]->id = i;
			}
		}
	} else if (FUNC2(rdev)) {
		/* DCE3.x has 2 audio blocks tied to DIG encoders */
		rdev->mode_info.afmt[0] = FUNC10(sizeof(struct radeon_afmt), GFP_KERNEL);
		if (rdev->mode_info.afmt[0]) {
			rdev->mode_info.afmt[0]->offset = DCE3_HDMI_OFFSET0;
			rdev->mode_info.afmt[0]->id = 0;
		}
		rdev->mode_info.afmt[1] = FUNC10(sizeof(struct radeon_afmt), GFP_KERNEL);
		if (rdev->mode_info.afmt[1]) {
			rdev->mode_info.afmt[1]->offset = DCE3_HDMI_OFFSET1;
			rdev->mode_info.afmt[1]->id = 1;
		}
	} else if (FUNC1(rdev)) {
		/* DCE2 has at least 1 routable audio block */
		rdev->mode_info.afmt[0] = FUNC10(sizeof(struct radeon_afmt), GFP_KERNEL);
		if (rdev->mode_info.afmt[0]) {
			rdev->mode_info.afmt[0]->offset = DCE2_HDMI_OFFSET0;
			rdev->mode_info.afmt[0]->id = 0;
		}
		/* r6xx has 2 routable audio blocks */
		if (rdev->family >= CHIP_R600) {
			rdev->mode_info.afmt[1] = FUNC10(sizeof(struct radeon_afmt), GFP_KERNEL);
			if (rdev->mode_info.afmt[1]) {
				rdev->mode_info.afmt[1]->offset = DCE2_HDMI_OFFSET1;
				rdev->mode_info.afmt[1]->id = 1;
			}
		}
	}
}