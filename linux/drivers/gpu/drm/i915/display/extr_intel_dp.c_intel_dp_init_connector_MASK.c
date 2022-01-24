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
struct TYPE_3__ {struct drm_device* dev; } ;
struct intel_encoder {int port; int /*<<< orphan*/  hpd_pin; int /*<<< orphan*/  type; TYPE_1__ base; } ;
struct intel_dp {int reset_link_params; void* active_pipe; struct intel_connector* attached_connector; int /*<<< orphan*/  output_reg; void* DP; void* pps_pipe; } ;
struct intel_digital_port {int max_lanes; struct intel_encoder base; struct intel_dp dp; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct drm_connector {int interlace_allowed; int ycbcr_420_allowed; TYPE_2__ base; scalar_t__ doublescan_allowed; } ;
struct intel_connector {struct drm_connector base; int /*<<< orphan*/  get_hw_state; int /*<<< orphan*/  modeset_retry_work; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;
typedef  enum phy { ____Placeholder_phy } phy ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int DRM_MODE_CONNECTOR_DisplayPort ; 
 int DRM_MODE_CONNECTOR_eDP ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_EDP ; 
 void* INVALID_PIPE ; 
 scalar_t__ FUNC8 (struct drm_i915_private*) ; 
 scalar_t__ FUNC9 (struct drm_i915_private*) ; 
 scalar_t__ FUNC10 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  PEG_BAND_GAP_DATA ; 
 int PORT_B ; 
 int PORT_C ; 
 int PORT_D ; 
 int PORT_F ; 
 scalar_t__ FUNC11 (int,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_device*,struct drm_connector*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (struct intel_connector*,struct intel_encoder*) ; 
 int /*<<< orphan*/  intel_connector_get_hw_state ; 
 int /*<<< orphan*/  intel_ddi_connector_get_hw_state ; 
 int /*<<< orphan*/  FUNC17 (struct intel_dp*,struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC18 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC19 (struct intel_dp*) ; 
 int /*<<< orphan*/  intel_dp_connector_funcs ; 
 int /*<<< orphan*/  intel_dp_connector_helper_funcs ; 
 int /*<<< orphan*/  intel_dp_hdcp_shim ; 
 scalar_t__ FUNC20 (struct intel_dp*) ; 
 scalar_t__ FUNC21 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  intel_dp_modeset_retry_work_fn ; 
 int /*<<< orphan*/  FUNC22 (struct intel_digital_port*) ; 
 int /*<<< orphan*/  FUNC23 (struct intel_digital_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC25 (struct intel_dp*,struct intel_connector*) ; 
 int FUNC26 (struct intel_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (struct drm_i915_private*,int) ; 
 int FUNC28 (struct drm_i915_private*,int) ; 
 int FUNC29 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC30 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC31 (int) ; 
 struct drm_i915_private* FUNC32 (struct drm_device*) ; 
 void* FUNC33 (struct intel_dp*) ; 

bool
FUNC34(struct intel_digital_port *intel_dig_port,
			struct intel_connector *intel_connector)
{
	struct drm_connector *connector = &intel_connector->base;
	struct intel_dp *intel_dp = &intel_dig_port->dp;
	struct intel_encoder *intel_encoder = &intel_dig_port->base;
	struct drm_device *dev = intel_encoder->base.dev;
	struct drm_i915_private *dev_priv = FUNC32(dev);
	enum port port = intel_encoder->port;
	enum phy phy = FUNC29(dev_priv, port);
	int type;

	/* Initialize the work for modeset in case of link train failure */
	FUNC6(&intel_connector->modeset_retry_work,
		  intel_dp_modeset_retry_work_fn);

	if (FUNC11(intel_dig_port->max_lanes < 1,
		 "Not enough lanes (%d) for DP on port %c\n",
		 intel_dig_port->max_lanes, FUNC31(port)))
		return false;

	FUNC24(intel_dp);

	intel_dp->reset_link_params = true;
	intel_dp->pps_pipe = INVALID_PIPE;
	intel_dp->active_pipe = INVALID_PIPE;

	/* Preserve the current hw state. */
	intel_dp->DP = FUNC4(intel_dp->output_reg);
	intel_dp->attached_connector = intel_connector;

	if (FUNC21(dev_priv, port)) {
		/*
		 * Currently we don't support eDP on TypeC ports, although in
		 * theory it could work on TypeC legacy ports.
		 */
		FUNC12(FUNC28(dev_priv, phy));
		type = DRM_MODE_CONNECTOR_eDP;
	} else {
		type = DRM_MODE_CONNECTOR_DisplayPort;
	}

	if (FUNC10(dev_priv) || FUNC8(dev_priv))
		intel_dp->active_pipe = FUNC33(intel_dp);

	/*
	 * For eDP we always set the encoder type to INTEL_OUTPUT_EDP, but
	 * for DP the encoder type can be set by the caller to
	 * INTEL_OUTPUT_UNKNOWN for DDI, so don't rewrite it.
	 */
	if (type == DRM_MODE_CONNECTOR_eDP)
		intel_encoder->type = INTEL_OUTPUT_EDP;

	/* eDP only on port B and/or C on vlv/chv */
	if (FUNC12((FUNC10(dev_priv) || FUNC8(dev_priv)) &&
		    FUNC20(intel_dp) &&
		    port != PORT_B && port != PORT_C))
		return false;

	FUNC0("Adding %s connector on port %c\n",
			type == DRM_MODE_CONNECTOR_eDP ? "eDP" : "DP",
			FUNC31(port));

	FUNC15(dev, connector, &intel_dp_connector_funcs, type);
	FUNC14(connector, &intel_dp_connector_helper_funcs);

	if (!FUNC3(dev_priv))
		connector->interlace_allowed = true;
	connector->doublescan_allowed = 0;

	if (FUNC7(dev_priv) >= 11)
		connector->ycbcr_420_allowed = true;

	intel_encoder->hpd_pin = FUNC27(dev_priv, port);

	FUNC19(intel_dp);

	FUNC16(intel_connector, intel_encoder);

	if (FUNC1(dev_priv))
		intel_connector->get_hw_state = intel_ddi_connector_get_hw_state;
	else
		intel_connector->get_hw_state = intel_connector_get_hw_state;

	/* init MST on ports that can support it */
	if (FUNC2(dev_priv) && !FUNC20(intel_dp) &&
	    (port == PORT_B || port == PORT_C ||
	     port == PORT_D || port == PORT_F))
		FUNC23(intel_dig_port,
					  intel_connector->base.base.id);

	if (!FUNC25(intel_dp, intel_connector)) {
		FUNC18(intel_dp);
		FUNC22(intel_dig_port);
		goto fail;
	}

	FUNC17(intel_dp, connector);

	if (FUNC30(dev_priv, port) && !FUNC20(intel_dp)) {
		int ret = FUNC26(intel_connector, &intel_dp_hdcp_shim);
		if (ret)
			FUNC0("HDCP init failed, skipping.\n");
	}

	/* For G4X desktop chip, PEG_BAND_GAP_DATA 3:0 must first be written
	 * 0xd.  Failure to do so will result in spurious interrupts being
	 * generated on the port when a cable is not attached.
	 */
	if (FUNC9(dev_priv)) {
		u32 temp = FUNC4(PEG_BAND_GAP_DATA);
		FUNC5(PEG_BAND_GAP_DATA, (temp & ~0xf) | 0xd);
	}

	return true;

fail:
	FUNC13(connector);

	return false;
}