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
typedef  int /*<<< orphan*/  u32 ;
struct drm_i915_private {scalar_t__ rawclk_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CBR1_VLV ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  DPOUNIT_CLOCK_GATE_DISABLE ; 
 int /*<<< orphan*/  DSPCLK_GATE_D ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE ; 
 int /*<<< orphan*/  MI_ARB_VLV ; 
 int /*<<< orphan*/  RAWCLK_FREQ_VLV ; 
 int /*<<< orphan*/  VRHUNIT_CLOCK_GATE_DISABLE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv)
{
	u32 val;

	/*
	 * On driver load, a pipe may be active and driving a DSI display.
	 * Preserve DPOUNIT_CLOCK_GATE_DISABLE to avoid the pipe getting stuck
	 * (and never recovering) in this case. intel_dsi_post_disable() will
	 * clear it when we turn off the display.
	 */
	val = FUNC1(DSPCLK_GATE_D);
	val &= DPOUNIT_CLOCK_GATE_DISABLE;
	val |= VRHUNIT_CLOCK_GATE_DISABLE;
	FUNC2(DSPCLK_GATE_D, val);

	/*
	 * Disable trickle feed and enable pnd deadline calculation
	 */
	FUNC2(MI_ARB_VLV, MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE);
	FUNC2(CBR1_VLV, 0);

	FUNC3(dev_priv->rawclk_freq == 0);

	FUNC2(RAWCLK_FREQ_VLV,
		   FUNC0(dev_priv->rawclk_freq, 1000));
}