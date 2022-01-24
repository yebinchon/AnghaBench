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
struct hibmc_drm_private {scalar_t__ mmio; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {struct hibmc_drm_private* dev_private; } ;

/* Variables and functions */
 scalar_t__ HIBMC_CURRENT_GATE ; 
 unsigned int FUNC0 (int) ; 
 unsigned int HIBMC_CURR_GATE_DISPLAY_MASK ; 
 unsigned int FUNC1 (int) ; 
 unsigned int HIBMC_CURR_GATE_LOCALMEM_MASK ; 
 int /*<<< orphan*/  HIBMC_PW_MODE_CTL_MODE_MODE0 ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct hibmc_drm_private*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct hibmc_drm_private*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct drm_crtc *crtc,
				     struct drm_crtc_state *old_state)
{
	unsigned int reg;
	struct hibmc_drm_private *priv = crtc->dev->dev_private;

	FUNC4(priv, HIBMC_PW_MODE_CTL_MODE_MODE0);

	/* Enable display power gate & LOCALMEM power gate*/
	reg = FUNC5(priv->mmio + HIBMC_CURRENT_GATE);
	reg &= ~HIBMC_CURR_GATE_LOCALMEM_MASK;
	reg &= ~HIBMC_CURR_GATE_DISPLAY_MASK;
	reg |= FUNC1(1);
	reg |= FUNC0(1);
	FUNC3(priv, reg);
	FUNC2(crtc);
}