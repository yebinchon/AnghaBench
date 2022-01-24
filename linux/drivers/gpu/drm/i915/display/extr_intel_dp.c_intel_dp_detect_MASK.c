#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct intel_encoder {int dummy; } ;
struct TYPE_10__ {scalar_t__ i2c_defer_count; scalar_t__ i2c_nack_count; } ;
struct TYPE_12__ {int /*<<< orphan*/  mst_state; } ;
struct intel_dp {int is_mst; int reset_link_params; TYPE_4__ aux; int /*<<< orphan*/  max_link_rate; int /*<<< orphan*/  max_link_lane_count; TYPE_6__ mst_mgr; int /*<<< orphan*/ * dsc_dpcd; int /*<<< orphan*/  compliance; } ;
struct intel_digital_port {struct intel_encoder base; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  connection_mutex; } ;
struct TYPE_9__ {TYPE_2__ mode_config; } ;
struct drm_i915_private {TYPE_3__ drm; } ;
struct TYPE_7__ {int id; } ;
struct drm_connector {int /*<<< orphan*/  name; TYPE_1__ base; int /*<<< orphan*/  dev; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_11__ {scalar_t__ detect_edid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 struct intel_digital_port* FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct intel_dp*) ; 
 struct intel_dp* FUNC7 (struct drm_connector*) ; 
 scalar_t__ FUNC8 (struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_dp*) ; 
 int FUNC12 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_dp*) ; 
 scalar_t__ FUNC14 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC16 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC17 (struct intel_dp*) ; 
 int FUNC18 (struct intel_encoder*,struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC19 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC20 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct drm_i915_private* FUNC22 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC23 (struct drm_connector*) ; 

__attribute__((used)) static int
FUNC24(struct drm_connector *connector,
		struct drm_modeset_acquire_ctx *ctx,
		bool force)
{
	struct drm_i915_private *dev_priv = FUNC22(connector->dev);
	struct intel_dp *intel_dp = FUNC7(connector);
	struct intel_digital_port *dig_port = FUNC3(intel_dp);
	struct intel_encoder *encoder = &dig_port->base;
	enum drm_connector_status status;

	FUNC0("[CONNECTOR:%d:%s]\n",
		      connector->base.id, connector->name);
	FUNC2(!FUNC5(&dev_priv->drm.mode_config.connection_mutex));

	/* Can't disconnect eDP */
	if (FUNC14(intel_dp))
		status = FUNC6(intel_dp);
	else if (FUNC8(encoder))
		status = FUNC12(intel_dp);
	else
		status = connector_status_disconnected;

	if (status == connector_status_disconnected) {
		FUNC21(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
		FUNC21(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));

		if (intel_dp->is_mst) {
			FUNC0("MST device may have disappeared %d vs %d\n",
				      intel_dp->is_mst,
				      intel_dp->mst_mgr.mst_state);
			intel_dp->is_mst = false;
			FUNC4(&intel_dp->mst_mgr,
							intel_dp->is_mst);
		}

		goto out;
	}

	if (intel_dp->reset_link_params) {
		/* Initial max link lane count */
		intel_dp->max_link_lane_count = FUNC15(intel_dp);

		/* Initial max link rate */
		intel_dp->max_link_rate = FUNC16(intel_dp);

		intel_dp->reset_link_params = false;
	}

	FUNC17(intel_dp);

	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
	if (FUNC1(dev_priv) >= 11)
		FUNC13(intel_dp);

	FUNC11(intel_dp);

	if (intel_dp->is_mst) {
		/*
		 * If we are in MST mode then this connector
		 * won't appear connected or have anything
		 * with EDID on it
		 */
		status = connector_status_disconnected;
		goto out;
	}

	/*
	 * Some external monitors do not signal loss of link synchronization
	 * with an IRQ_HPD, so force a link status check.
	 */
	if (!FUNC14(intel_dp)) {
		int ret;

		ret = FUNC18(encoder, ctx);
		if (ret)
			return ret;
	}

	/*
	 * Clearing NACK and defer counts to get their exact values
	 * while reading EDID which are required by Compliance tests
	 * 4.2.2.4 and 4.2.2.5
	 */
	intel_dp->aux.i2c_nack_count = 0;
	intel_dp->aux.i2c_defer_count = 0;

	FUNC19(intel_dp);
	if (FUNC14(intel_dp) ||
	    FUNC23(connector)->detect_edid)
		status = connector_status_connected;

	FUNC10(intel_dp);

out:
	if (status != connector_status_connected && !intel_dp->is_mst)
		FUNC20(intel_dp);

	/*
	 * Make sure the refs for power wells enabled during detect are
	 * dropped to avoid a new detect cycle triggered by HPD polling.
	 */
	FUNC9(dev_priv);

	return status;
}