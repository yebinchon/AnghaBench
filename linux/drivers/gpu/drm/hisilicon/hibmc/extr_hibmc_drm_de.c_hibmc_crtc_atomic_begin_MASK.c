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
struct hibmc_drm_private {scalar_t__ mmio; } ;
struct drm_device {struct hibmc_drm_private* dev_private; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 scalar_t__ HIBMC_CURRENT_GATE ; 
 unsigned int FUNC0 (int) ; 
 unsigned int HIBMC_CURR_GATE_DISPLAY_MASK ; 
 unsigned int FUNC1 (int) ; 
 unsigned int HIBMC_CURR_GATE_LOCALMEM_MASK ; 
 int /*<<< orphan*/  HIBMC_PW_MODE_CTL_MODE_MODE0 ; 
 int /*<<< orphan*/  FUNC2 (struct hibmc_drm_private*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct hibmc_drm_private*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct drm_crtc *crtc,
				    struct drm_crtc_state *old_state)
{
	unsigned int reg;
	struct drm_device *dev = crtc->dev;
	struct hibmc_drm_private *priv = dev->dev_private;

	FUNC3(priv, HIBMC_PW_MODE_CTL_MODE_MODE0);

	/* Enable display power gate & LOCALMEM power gate*/
	reg = FUNC4(priv->mmio + HIBMC_CURRENT_GATE);
	reg &= ~HIBMC_CURR_GATE_DISPLAY_MASK;
	reg &= ~HIBMC_CURR_GATE_LOCALMEM_MASK;
	reg |= FUNC0(1);
	reg |= FUNC1(1);
	FUNC2(priv, reg);

	/* We can add more initialization as needed. */
}