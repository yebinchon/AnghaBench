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
struct intel_hdmi {int /*<<< orphan*/  cec_notifier; struct intel_connector* attached_connector; int /*<<< orphan*/  ddc_bus; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_encoder {int port; int /*<<< orphan*/  hpd_pin; TYPE_1__ base; } ;
struct intel_digital_port {int max_lanes; struct intel_encoder base; struct intel_hdmi hdmi; } ;
struct drm_connector {int interlace_allowed; int stereo_allowed; int ycbcr_420_allowed; scalar_t__ doublescan_allowed; } ;
struct intel_connector {int /*<<< orphan*/  get_hw_state; struct drm_connector base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_HDMIA ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  PEG_BAND_GAP_DATA ; 
 int PORT_A ; 
 scalar_t__ FUNC7 (int,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_device*,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_connector*,struct intel_encoder*) ; 
 int /*<<< orphan*/  intel_connector_get_hw_state ; 
 int /*<<< orphan*/  intel_ddi_connector_get_hw_state ; 
 int FUNC13 (struct intel_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct intel_hdmi*,struct drm_connector*) ; 
 int /*<<< orphan*/  intel_hdmi_connector_funcs ; 
 int /*<<< orphan*/  intel_hdmi_connector_helper_funcs ; 
 int /*<<< orphan*/  FUNC15 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  intel_hdmi_hdcp_shim ; 
 int /*<<< orphan*/  FUNC16 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC17 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 struct drm_i915_private* FUNC20 (struct drm_device*) ; 

void FUNC21(struct intel_digital_port *intel_dig_port,
			       struct intel_connector *intel_connector)
{
	struct drm_connector *connector = &intel_connector->base;
	struct intel_hdmi *intel_hdmi = &intel_dig_port->hdmi;
	struct intel_encoder *intel_encoder = &intel_dig_port->base;
	struct drm_device *dev = intel_encoder->base.dev;
	struct drm_i915_private *dev_priv = FUNC20(dev);
	enum port port = intel_encoder->port;

	FUNC0("Adding HDMI connector on port %c\n",
		      FUNC19(port));

	if (FUNC7(intel_dig_port->max_lanes < 4,
		 "Not enough lanes (%d) for HDMI on port %c\n",
		 intel_dig_port->max_lanes, FUNC19(port)))
		return;

	FUNC11(dev, connector, &intel_hdmi_connector_funcs,
			   DRM_MODE_CONNECTOR_HDMIA);
	FUNC10(connector, &intel_hdmi_connector_helper_funcs);

	connector->interlace_allowed = 1;
	connector->doublescan_allowed = 0;
	connector->stereo_allowed = 1;

	if (FUNC4(dev_priv) >= 10 || FUNC6(dev_priv))
		connector->ycbcr_420_allowed = true;

	intel_hdmi->ddc_bus = FUNC15(dev_priv, port);

	if (FUNC8(port == PORT_A))
		return;
	intel_encoder->hpd_pin = FUNC16(dev_priv, port);

	if (FUNC1(dev_priv))
		intel_connector->get_hw_state = intel_ddi_connector_get_hw_state;
	else
		intel_connector->get_hw_state = intel_connector_get_hw_state;

	FUNC14(intel_hdmi, connector);

	FUNC12(intel_connector, intel_encoder);
	intel_hdmi->attached_connector = intel_connector;

	if (FUNC17(dev_priv, port)) {
		int ret = FUNC13(intel_connector,
					  &intel_hdmi_hdcp_shim);
		if (ret)
			FUNC0("HDCP init failed, skipping.\n");
	}

	/* For G4X desktop chip, PEG_BAND_GAP_DATA 3:0 must first be written
	 * 0xd.  Failure to do so will result in spurious interrupts being
	 * generated on the port when a cable is not attached.
	 */
	if (FUNC5(dev_priv)) {
		u32 temp = FUNC2(PEG_BAND_GAP_DATA);
		FUNC3(PEG_BAND_GAP_DATA, (temp & ~0xf) | 0xd);
	}

	intel_hdmi->cec_notifier = FUNC9(dev->dev,
							 FUNC18(port));
	if (!intel_hdmi->cec_notifier)
		FUNC0("CEC notifier get failed\n");
}