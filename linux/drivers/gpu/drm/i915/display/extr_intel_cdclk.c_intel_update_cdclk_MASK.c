#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  cdclk; } ;
struct TYPE_5__ {TYPE_3__ hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* get_cdclk ) (struct drm_i915_private*,TYPE_3__*) ;} ;
struct drm_i915_private {TYPE_2__ cdclk; TYPE_1__ display; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GMBUSFREQ_VLV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,TYPE_3__*) ; 

void FUNC5(struct drm_i915_private *dev_priv)
{
	dev_priv->display.get_cdclk(dev_priv, &dev_priv->cdclk.hw);

	/*
	 * 9:0 CMBUS [sic] CDCLK frequency (cdfreq):
	 * Programmng [sic] note: bit[9:2] should be programmed to the number
	 * of cdclk that generates 4MHz reference clock freq which is used to
	 * generate GMBus clock. This will vary with the cdclk freq.
	 */
	if (FUNC3(dev_priv) || FUNC2(dev_priv))
		FUNC1(GMBUSFREQ_VLV,
			   FUNC0(dev_priv->cdclk.hw.cdclk, 1000));
}