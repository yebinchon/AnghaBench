#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct intel_hdmi {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  active; } ;
struct intel_digital_port {TYPE_3__ lspcon; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector {TYPE_4__* dev; int /*<<< orphan*/  base; TYPE_1__* state; } ;
struct TYPE_6__ {int /*<<< orphan*/  hdr_output_metadata_property; } ;
struct TYPE_8__ {TYPE_2__ mode_config; } ;
struct TYPE_5__ {int /*<<< orphan*/  picture_aspect_ratio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  HDMI_PICTURE_ASPECT_NONE ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct intel_digital_port* FUNC6 (struct intel_hdmi*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_connector*) ; 
 struct drm_i915_private* FUNC11 (TYPE_4__*) ; 

__attribute__((used)) static void
FUNC12(struct intel_hdmi *intel_hdmi, struct drm_connector *connector)
{
	struct drm_i915_private *dev_priv = FUNC11(connector->dev);
	struct intel_digital_port *intel_dig_port =
				FUNC6(intel_hdmi);

	FUNC10(connector);
	FUNC8(connector);
	FUNC7(connector);

	/*
	 * Attach Colorspace property for Non LSPCON based device
	 * ToDo: This needs to be extended for LSPCON implementation
	 * as well. Will be implemented separately.
	 */
	if (!intel_dig_port->lspcon.active)
		FUNC9(connector);

	FUNC3(connector);
	connector->state->picture_aspect_ratio = HDMI_PICTURE_ASPECT_NONE;

	if (FUNC1(dev_priv) >= 10 || FUNC2(dev_priv))
		FUNC5(&connector->base,
			connector->dev->mode_config.hdr_output_metadata_property, 0);

	if (!FUNC0(dev_priv))
		FUNC4(connector, 8, 12);
}