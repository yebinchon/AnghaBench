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
struct ltdc_device {int /*<<< orphan*/  pixel_clk; } ;
struct drm_display_mode {int clock; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct ltdc_device* FUNC4 (struct drm_crtc*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8(struct drm_crtc *crtc,
				 const struct drm_display_mode *mode,
				 struct drm_display_mode *adjusted_mode)
{
	struct ltdc_device *ldev = FUNC4(crtc);
	struct drm_device *ddev = crtc->dev;
	int rate = mode->clock * 1000;
	bool runtime_active;
	int ret;

	runtime_active = FUNC5(ddev->dev);

	if (runtime_active)
		FUNC7(ddev->dev);

	if (FUNC3(ldev->pixel_clk, rate) < 0) {
		FUNC1("Cannot set rate (%dHz) for pixel clk\n", rate);
		return false;
	}

	adjusted_mode->clock = FUNC2(ldev->pixel_clk) / 1000;

	if (runtime_active) {
		ret = FUNC6(ddev->dev);
		if (ret) {
			FUNC1("Failed to fixup mode, cannot get sync\n");
			return false;
		}
	}

	FUNC0("requested clock %dkHz, adjusted clock %dkHz\n",
			 mode->clock, adjusted_mode->clock);

	return true;
}