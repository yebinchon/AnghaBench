#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* state; int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {TYPE_3__ base; } ;
struct intel_sdvo_connector {TYPE_2__ base; } ;
struct intel_sdvo {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  picture_aspect_ratio; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_PICTURE_ASPECT_NONE ; 
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct intel_sdvo *intel_sdvo,
			       struct intel_sdvo_connector *connector)
{
	struct drm_i915_private *dev_priv = FUNC5(connector->base.base.dev);

	FUNC4(&connector->base.base);
	if (FUNC0(dev_priv) >= 4 && FUNC1(dev_priv)) {
		FUNC3(&connector->base.base);
	}
	FUNC2(&connector->base.base);
	connector->base.base.state->picture_aspect_ratio = HDMI_PICTURE_ASPECT_NONE;
}