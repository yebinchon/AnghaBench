#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_10__ {TYPE_3__* fixed_mode; } ;
struct TYPE_8__ {int /*<<< orphan*/  panel_orientation; } ;
struct TYPE_11__ {TYPE_2__ display_info; TYPE_1__* state; int /*<<< orphan*/  dev; } ;
struct intel_connector {TYPE_4__ panel; TYPE_5__ base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; } ;
struct TYPE_7__ {int /*<<< orphan*/  scaling_mode; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRM_MODE_SCALE_ASPECT ; 
 int /*<<< orphan*/  DRM_MODE_SCALE_CENTER ; 
 int /*<<< orphan*/  DRM_MODE_SCALE_FULLSCREEN ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_connector*) ; 

__attribute__((used)) static void FUNC6(struct intel_connector *connector)
{
	struct drm_i915_private *dev_priv = FUNC4(connector->base.dev);

	if (connector->panel.fixed_mode) {
		u32 allowed_scalers;

		allowed_scalers = FUNC0(DRM_MODE_SCALE_ASPECT) | FUNC0(DRM_MODE_SCALE_FULLSCREEN);
		if (!FUNC1(dev_priv))
			allowed_scalers |= FUNC0(DRM_MODE_SCALE_CENTER);

		FUNC2(&connector->base,
								allowed_scalers);

		connector->base.state->scaling_mode = DRM_MODE_SCALE_ASPECT;

		connector->base.display_info.panel_orientation =
			FUNC5(connector);
		FUNC3(
				&connector->base,
				connector->panel.fixed_mode->hdisplay,
				connector->panel.fixed_mode->vdisplay);
	}
}