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
struct radeon_device {scalar_t__ family; } ;
struct radeon_crtc {int crtc_offset; int cursor_addr; int crtc_id; int legacy_display_base_addr; scalar_t__ cursor_out_of_bounds; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {struct radeon_device* dev_private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 int AVIVO_D1CURSOR_EN ; 
 int AVIVO_D1CURSOR_MODE_24BPP ; 
 int AVIVO_D1CURSOR_MODE_SHIFT ; 
 int AVIVO_D1CUR_CONTROL ; 
 scalar_t__ AVIVO_D1CUR_SURFACE_ADDRESS ; 
 scalar_t__ CHIP_RV770 ; 
 int /*<<< orphan*/  EVERGREEN_CURSOR_24_8_PRE_MULT ; 
 int EVERGREEN_CURSOR_EN ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVERGREEN_CURSOR_URGENT_1_2 ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int EVERGREEN_CUR_CONTROL ; 
 scalar_t__ EVERGREEN_CUR_SURFACE_ADDRESS ; 
 scalar_t__ EVERGREEN_CUR_SURFACE_ADDRESS_HIGH ; 
 scalar_t__ R700_D1CUR_SURFACE_ADDRESS_HIGH ; 
 scalar_t__ R700_D2CUR_SURFACE_ADDRESS_HIGH ; 
 int RADEON_CRTC2_GEN_CNTL ; 
 int RADEON_CRTC_CUR_EN ; 
 int RADEON_CRTC_CUR_MODE_24BPP ; 
 int RADEON_CRTC_CUR_MODE_MASK ; 
 int RADEON_CRTC_CUR_MODE_SHIFT ; 
 int RADEON_CRTC_GEN_CNTL ; 
 scalar_t__ RADEON_CUR_OFFSET ; 
 scalar_t__ RADEON_MM_DATA ; 
 scalar_t__ RADEON_MM_INDEX ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,int) ; 
 int FUNC6 (int) ; 
 struct radeon_crtc* FUNC7 (struct drm_crtc*) ; 
 int FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct drm_crtc *crtc)
{
	struct radeon_crtc *radeon_crtc = FUNC7(crtc);
	struct radeon_device *rdev = crtc->dev->dev_private;

	if (radeon_crtc->cursor_out_of_bounds)
		return;

	if (FUNC1(rdev)) {
		FUNC4(EVERGREEN_CUR_SURFACE_ADDRESS_HIGH + radeon_crtc->crtc_offset,
		       FUNC8(radeon_crtc->cursor_addr));
		FUNC4(EVERGREEN_CUR_SURFACE_ADDRESS + radeon_crtc->crtc_offset,
		       FUNC6(radeon_crtc->cursor_addr));
		FUNC4(RADEON_MM_INDEX, EVERGREEN_CUR_CONTROL + radeon_crtc->crtc_offset);
		FUNC4(RADEON_MM_DATA, EVERGREEN_CURSOR_EN |
		       FUNC2(EVERGREEN_CURSOR_24_8_PRE_MULT) |
		       FUNC3(EVERGREEN_CURSOR_URGENT_1_2));
	} else if (FUNC0(rdev)) {
		if (rdev->family >= CHIP_RV770) {
			if (radeon_crtc->crtc_id)
				FUNC4(R700_D2CUR_SURFACE_ADDRESS_HIGH,
				       FUNC8(radeon_crtc->cursor_addr));
			else
				FUNC4(R700_D1CUR_SURFACE_ADDRESS_HIGH,
				       FUNC8(radeon_crtc->cursor_addr));
		}

		FUNC4(AVIVO_D1CUR_SURFACE_ADDRESS + radeon_crtc->crtc_offset,
		       FUNC6(radeon_crtc->cursor_addr));
		FUNC4(RADEON_MM_INDEX, AVIVO_D1CUR_CONTROL + radeon_crtc->crtc_offset);
		FUNC4(RADEON_MM_DATA, AVIVO_D1CURSOR_EN |
		       (AVIVO_D1CURSOR_MODE_24BPP << AVIVO_D1CURSOR_MODE_SHIFT));
	} else {
		/* offset is from DISP(2)_BASE_ADDRESS */
		FUNC4(RADEON_CUR_OFFSET + radeon_crtc->crtc_offset,
		       radeon_crtc->cursor_addr - radeon_crtc->legacy_display_base_addr);

		switch (radeon_crtc->crtc_id) {
		case 0:
			FUNC4(RADEON_MM_INDEX, RADEON_CRTC_GEN_CNTL);
			break;
		case 1:
			FUNC4(RADEON_MM_INDEX, RADEON_CRTC2_GEN_CNTL);
			break;
		default:
			return;
		}

		FUNC5(RADEON_MM_DATA, (RADEON_CRTC_CUR_EN |
					  (RADEON_CRTC_CUR_MODE_24BPP << RADEON_CRTC_CUR_MODE_SHIFT)),
			 ~(RADEON_CRTC_CUR_EN | RADEON_CRTC_CUR_MODE_MASK));
	}
}