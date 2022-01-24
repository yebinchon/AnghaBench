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
typedef  int u32 ;
struct intel_dp {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector {TYPE_1__* state; int /*<<< orphan*/  dev; } ;
typedef  enum port { ____Placeholder_port } port ;
struct TYPE_5__ {int port; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  scaling_mode; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRM_MODE_SCALE_ASPECT ; 
 int /*<<< orphan*/  DRM_MODE_SCALE_CENTER ; 
 int /*<<< orphan*/  DRM_MODE_SCALE_FULLSCREEN ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int PORT_A ; 
 TYPE_3__* FUNC4 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_connector*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_connector*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_connector*) ; 
 scalar_t__ FUNC9 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct intel_dp *intel_dp, struct drm_connector *connector)
{
	struct drm_i915_private *dev_priv = FUNC10(connector->dev);
	enum port port = FUNC4(intel_dp)->base.port;

	if (!FUNC3(dev_priv) && port != PORT_A)
		FUNC8(connector);

	FUNC7(connector);
	if (FUNC1(dev_priv))
		FUNC5(connector, 6, 10);
	else if (FUNC2(dev_priv) >= 5)
		FUNC5(connector, 6, 12);

	if (FUNC9(intel_dp)) {
		u32 allowed_scalers;

		allowed_scalers = FUNC0(DRM_MODE_SCALE_ASPECT) | FUNC0(DRM_MODE_SCALE_FULLSCREEN);
		if (!FUNC1(dev_priv))
			allowed_scalers |= FUNC0(DRM_MODE_SCALE_CENTER);

		FUNC6(connector, allowed_scalers);

		connector->state->scaling_mode = DRM_MODE_SCALE_ASPECT;

	}
}