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
typedef  unsigned int u32 ;
struct hibmc_drm_private {scalar_t__ mmio; } ;
struct drm_display_mode {unsigned long hdisplay; unsigned long vdisplay; } ;
struct drm_device {struct hibmc_drm_private* dev_private; } ;

/* Variables and functions */
 scalar_t__ CRT_PLL2_HS ; 
 int /*<<< orphan*/  HIBMC_CRTSELECT_CRT ; 
 scalar_t__ HIBMC_CRT_AUTO_CENTERING_BR ; 
 int /*<<< orphan*/  HIBMC_CRT_AUTO_CENTERING_BR_BOTTOM ; 
 int /*<<< orphan*/  HIBMC_CRT_AUTO_CENTERING_BR_RIGHT ; 
 scalar_t__ HIBMC_CRT_AUTO_CENTERING_TL ; 
 int /*<<< orphan*/  HIBMC_CRT_AUTO_CENTERING_TL_LEFT ; 
 int /*<<< orphan*/  HIBMC_CRT_AUTO_CENTERING_TL_TOP ; 
 scalar_t__ HIBMC_CRT_DISP_CTL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int HIBMC_CRT_DISP_CTL_CLOCK_PHASE_MASK ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int HIBMC_CRT_DISP_CTL_CRTSELECT_MASK ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC6(struct drm_device *dev,
					struct drm_display_mode *mode,
					unsigned int ctrl)
{
	unsigned long x, y;
	u32 pll1; /* bit[31:0] of PLL */
	u32 pll2; /* bit[63:32] of PLL */
	struct hibmc_drm_private *priv = dev->dev_private;

	x = mode->hdisplay;
	y = mode->vdisplay;

	FUNC3(x, y, &pll1, &pll2);
	FUNC5(pll2, priv->mmio + CRT_PLL2_HS);
	FUNC4(dev, pll1);

	/*
	 * Hisilicon has to set up the top-left and bottom-right
	 * registers as well.
	 * Note that normal chip only use those two register for
	 * auto-centering mode.
	 */
	FUNC5(FUNC2(HIBMC_CRT_AUTO_CENTERING_TL_TOP, 0) |
	       FUNC2(HIBMC_CRT_AUTO_CENTERING_TL_LEFT, 0),
	       priv->mmio + HIBMC_CRT_AUTO_CENTERING_TL);

	FUNC5(FUNC2(HIBMC_CRT_AUTO_CENTERING_BR_BOTTOM, y - 1) |
	       FUNC2(HIBMC_CRT_AUTO_CENTERING_BR_RIGHT, x - 1),
	       priv->mmio + HIBMC_CRT_AUTO_CENTERING_BR);

	/*
	 * Assume common fields in ctrl have been properly set before
	 * calling this function.
	 * This function only sets the extra fields in ctrl.
	 */

	/* Set bit 25 of display controller: Select CRT or VGA clock */
	ctrl &= ~HIBMC_CRT_DISP_CTL_CRTSELECT_MASK;
	ctrl &= ~HIBMC_CRT_DISP_CTL_CLOCK_PHASE_MASK;

	ctrl |= FUNC1(HIBMC_CRTSELECT_CRT);

	/* clock_phase_polarity is 0 */
	ctrl |= FUNC0(0);

	FUNC5(ctrl, priv->mmio + HIBMC_CRT_DISP_CTL);

	return ctrl;
}