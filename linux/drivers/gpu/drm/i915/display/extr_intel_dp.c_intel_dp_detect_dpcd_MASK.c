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
typedef  int u8 ;
struct intel_lspcon {scalar_t__ active; } ;
struct TYPE_2__ {int /*<<< orphan*/  ddc; } ;
struct intel_dp {int* dpcd; int* downstream_ports; TYPE_1__ aux; scalar_t__ sink_count; } ;
typedef  enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;

/* Variables and functions */
 size_t DP_DOWNSTREAMPORT_PRESENT ; 
 size_t DP_DPCD_REV ; 
 int DP_DS_PORT_HPD ; 
 int DP_DS_PORT_TYPE_MASK ; 
 int DP_DS_PORT_TYPE_NON_EDID ; 
 int DP_DS_PORT_TYPE_VGA ; 
 int DP_DWN_STRM_PORT_TYPE_ANALOG ; 
 int DP_DWN_STRM_PORT_TYPE_MASK ; 
 int DP_DWN_STRM_PORT_TYPE_OTHER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 int connector_status_unknown ; 
 struct intel_lspcon* FUNC2 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_lspcon*) ; 

__attribute__((used)) static enum drm_connector_status
FUNC9(struct intel_dp *intel_dp)
{
	struct intel_lspcon *lspcon = FUNC2(intel_dp);
	u8 *dpcd = intel_dp->dpcd;
	u8 type;

	if (FUNC1(FUNC7(intel_dp)))
		return connector_status_connected;

	if (lspcon->active)
		FUNC8(lspcon);

	if (!FUNC6(intel_dp))
		return connector_status_disconnected;

	/* if there's no downstream port, we're done */
	if (!FUNC3(dpcd))
		return connector_status_connected;

	/* If we're HPD-aware, SINK_COUNT changes dynamically */
	if (intel_dp->dpcd[DP_DPCD_REV] >= 0x11 &&
	    intel_dp->downstream_ports[0] & DP_DS_PORT_HPD) {

		return intel_dp->sink_count ?
		connector_status_connected : connector_status_disconnected;
	}

	if (FUNC5(intel_dp))
		return connector_status_connected;

	/* If no HPD, poke DDC gently */
	if (FUNC4(&intel_dp->aux.ddc))
		return connector_status_connected;

	/* Well we tried, say unknown for unreliable port types */
	if (intel_dp->dpcd[DP_DPCD_REV] >= 0x11) {
		type = intel_dp->downstream_ports[0] & DP_DS_PORT_TYPE_MASK;
		if (type == DP_DS_PORT_TYPE_VGA ||
		    type == DP_DS_PORT_TYPE_NON_EDID)
			return connector_status_unknown;
	} else {
		type = intel_dp->dpcd[DP_DOWNSTREAMPORT_PRESENT] &
			DP_DWN_STRM_PORT_TYPE_MASK;
		if (type == DP_DWN_STRM_PORT_TYPE_ANALOG ||
		    type == DP_DWN_STRM_PORT_TYPE_OTHER)
			return connector_status_unknown;
	}

	/* Anything else is out of spec, warn and ignore */
	FUNC0("Broken DP branch device, ignoring\n");
	return connector_status_disconnected;
}