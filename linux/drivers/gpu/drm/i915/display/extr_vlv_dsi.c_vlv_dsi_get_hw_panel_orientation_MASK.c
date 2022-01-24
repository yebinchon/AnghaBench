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
typedef  int u32 ;
struct intel_plane {int /*<<< orphan*/  i9xx_plane; } ;
struct intel_encoder {int /*<<< orphan*/  (* get_hw_state ) (struct intel_encoder*,int*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  primary; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_connector {struct intel_encoder* encoder; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
typedef  enum intel_display_power_domain { ____Placeholder_intel_display_power_domain } intel_display_power_domain ;
typedef  enum drm_panel_orientation { ____Placeholder_drm_panel_orientation } drm_panel_orientation ;

/* Variables and functions */
 int DISPLAY_PLANE_ENABLE ; 
 int DISPPLANE_ROTATE_180 ; 
 int DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP ; 
 int DRM_MODE_PANEL_ORIENTATION_NORMAL ; 
 int DRM_MODE_PANEL_ORIENTATION_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC5 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_encoder*,int*) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 
 struct intel_plane* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum drm_panel_orientation
FUNC9(struct intel_connector *connector)
{
	struct drm_i915_private *dev_priv = FUNC7(connector->base.dev);
	struct intel_encoder *encoder = connector->encoder;
	enum intel_display_power_domain power_domain;
	enum drm_panel_orientation orientation;
	struct intel_plane *plane;
	struct intel_crtc *crtc;
	intel_wakeref_t wakeref;
	enum pipe pipe;
	u32 val;

	if (!encoder->get_hw_state(encoder, &pipe))
		return DRM_MODE_PANEL_ORIENTATION_UNKNOWN;

	crtc = FUNC5(dev_priv, pipe);
	plane = FUNC8(crtc->base.primary);

	power_domain = FUNC2(pipe);
	wakeref = FUNC3(dev_priv, power_domain);
	if (!wakeref)
		return DRM_MODE_PANEL_ORIENTATION_UNKNOWN;

	val = FUNC1(FUNC0(plane->i9xx_plane));

	if (!(val & DISPLAY_PLANE_ENABLE))
		orientation = DRM_MODE_PANEL_ORIENTATION_UNKNOWN;
	else if (val & DISPPLANE_ROTATE_180)
		orientation = DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP;
	else
		orientation = DRM_MODE_PANEL_ORIENTATION_NORMAL;

	FUNC4(dev_priv, power_domain, wakeref);

	return orientation;
}