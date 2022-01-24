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
struct drm_i915_private {int max_dotclk_freq; } ;
struct drm_display_mode {int flags; int clock; int hdisplay; } ;
struct drm_device {int dummy; } ;
struct drm_connector {struct drm_device* dev; } ;
typedef  enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;

/* Variables and functions */
 int DRM_MODE_FLAG_DBLSCAN ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*,int,int) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int MODE_CLOCK_HIGH ; 
 int MODE_CLOCK_LOW ; 
 int MODE_H_ILLEGAL ; 
 int MODE_NO_DBLESCAN ; 
 int MODE_OK ; 
 int FUNC3 (int,int,int) ; 
 struct drm_i915_private* FUNC4 (struct drm_device*) ; 

__attribute__((used)) static enum drm_mode_status
FUNC5(struct drm_connector *connector,
		     struct drm_display_mode *mode)
{
	struct drm_device *dev = connector->dev;
	struct drm_i915_private *dev_priv = FUNC4(dev);
	int max_dotclk = dev_priv->max_dotclk_freq;
	int max_clock;

	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
		return MODE_NO_DBLESCAN;

	if (mode->clock < 25000)
		return MODE_CLOCK_LOW;

	if (FUNC0(dev_priv))
		max_clock = 180000;
	else if (FUNC2(dev_priv))
		/*
		 * 270 MHz due to current DPLL limits,
		 * DAC limit supposedly 355 MHz.
		 */
		max_clock = 270000;
	else if (FUNC1(dev_priv, 3, 4))
		max_clock = 400000;
	else
		max_clock = 350000;
	if (mode->clock > max_clock)
		return MODE_CLOCK_HIGH;

	if (mode->clock > max_dotclk)
		return MODE_CLOCK_HIGH;

	/* The FDI receiver on LPT only supports 8bpc and only has 2 lanes. */
	if (FUNC0(dev_priv) &&
	    (FUNC3(mode->clock, 270000, 24) > 2))
		return MODE_CLOCK_HIGH;

	/* HSW/BDW FDI limited to 4k */
	if (mode->hdisplay > 4096)
		return MODE_H_ILLEGAL;

	return MODE_OK;
}