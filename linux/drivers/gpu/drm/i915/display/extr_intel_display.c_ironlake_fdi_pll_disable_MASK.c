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
typedef  int u32 ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int FDI_PCDCLK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FDI_RX_PLL_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FDI_TX_PLL_ENABLE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct intel_crtc *intel_crtc)
{
	struct drm_device *dev = intel_crtc->base.dev;
	struct drm_i915_private *dev_priv = FUNC5(dev);
	int pipe = intel_crtc->pipe;
	i915_reg_t reg;
	u32 temp;

	/* Switch from PCDclk to Rawclk */
	reg = FUNC0(pipe);
	temp = FUNC2(reg);
	FUNC3(reg, temp & ~FDI_PCDCLK);

	/* Disable CPU FDI TX PLL */
	reg = FUNC1(pipe);
	temp = FUNC2(reg);
	FUNC3(reg, temp & ~FDI_TX_PLL_ENABLE);

	FUNC4(reg);
	FUNC6(100);

	reg = FUNC0(pipe);
	temp = FUNC2(reg);
	FUNC3(reg, temp & ~FDI_RX_PLL_ENABLE);

	/* Wait for the clocks to turn off. */
	FUNC4(reg);
	FUNC6(100);
}