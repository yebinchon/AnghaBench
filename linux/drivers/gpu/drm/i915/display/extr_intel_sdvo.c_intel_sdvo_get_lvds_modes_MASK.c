#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct intel_sdvo {int /*<<< orphan*/  ddc; } ;
struct TYPE_3__ {int /*<<< orphan*/ * sdvo_lvds_vbt_mode; } ;
struct drm_i915_private {TYPE_1__ vbt; } ;
struct drm_display_mode {int type; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct drm_connector {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; TYPE_2__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int DRM_MODE_TYPE_DRIVER ; 
 int DRM_MODE_TYPE_PREFERRED ; 
 struct drm_display_mode* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct drm_display_mode*) ; 
 struct intel_sdvo* FUNC3 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct drm_connector *connector)
{
	struct intel_sdvo *intel_sdvo = FUNC3(connector);
	struct drm_i915_private *dev_priv = FUNC5(connector->dev);
	struct drm_display_mode *newmode;

	FUNC0("[CONNECTOR:%d:%s]\n",
		      connector->base.id, connector->name);

	/*
	 * Fetch modes from VBT. For SDVO prefer the VBT mode since some
	 * SDVO->LVDS transcoders can't cope with the EDID mode.
	 */
	if (dev_priv->vbt.sdvo_lvds_vbt_mode != NULL) {
		newmode = FUNC1(connector->dev,
					     dev_priv->vbt.sdvo_lvds_vbt_mode);
		if (newmode != NULL) {
			/* Guarantee the mode is preferred */
			newmode->type = (DRM_MODE_TYPE_PREFERRED |
					 DRM_MODE_TYPE_DRIVER);
			FUNC2(connector, newmode);
		}
	}

	/*
	 * Attempt to get the mode list from DDC.
	 * Assume that the preferred modes are
	 * arranged in priority order.
	 */
	FUNC4(connector, &intel_sdvo->ddc);
}