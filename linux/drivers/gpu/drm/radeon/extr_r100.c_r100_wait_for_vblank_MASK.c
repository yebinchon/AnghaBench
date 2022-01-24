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
struct radeon_device {int num_crtc; } ;

/* Variables and functions */
 int RADEON_CRTC2_EN ; 
 int /*<<< orphan*/  RADEON_CRTC2_GEN_CNTL ; 
 int RADEON_CRTC_EN ; 
 int /*<<< orphan*/  RADEON_CRTC_GEN_CNTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int) ; 
 scalar_t__ FUNC2 (struct radeon_device*,int) ; 

void FUNC3(struct radeon_device *rdev, int crtc)
{
	unsigned i = 0;

	if (crtc >= rdev->num_crtc)
		return;

	if (crtc == 0) {
		if (!(FUNC0(RADEON_CRTC_GEN_CNTL) & RADEON_CRTC_EN))
			return;
	} else {
		if (!(FUNC0(RADEON_CRTC2_GEN_CNTL) & RADEON_CRTC2_EN))
			return;
	}

	/* depending on when we hit vblank, we may be close to active; if so,
	 * wait for another frame.
	 */
	while (FUNC2(rdev, crtc)) {
		if (i++ % 100 == 0) {
			if (!FUNC1(rdev, crtc))
				break;
		}
	}

	while (!FUNC2(rdev, crtc)) {
		if (i++ % 100 == 0) {
			if (!FUNC1(rdev, crtc))
				break;
		}
	}
}