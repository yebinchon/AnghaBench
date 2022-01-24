#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct intel_hdcp {scalar_t__ content_type; int /*<<< orphan*/  mutex; int /*<<< orphan*/  prop_work; scalar_t__ value; } ;
struct intel_encoder {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
struct intel_connector {struct intel_hdcp hdcp; } ;
struct drm_connector_state {scalar_t__ hdcp_content_type; scalar_t__ content_protection; int /*<<< orphan*/  connector; } ;

/* Variables and functions */
 scalar_t__ DRM_MODE_CONTENT_PROTECTION_DESIRED ; 
 scalar_t__ DRM_MODE_CONTENT_PROTECTION_UNDESIRED ; 
 int /*<<< orphan*/  INTEL_OUTPUT_HDMI ; 
 int /*<<< orphan*/  FUNC0 (struct intel_crtc_state const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct intel_connector* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct intel_encoder *encoder,
				  const struct intel_crtc_state *crtc_state,
				  const struct drm_connector_state *conn_state)
{
	struct intel_connector *connector =
				FUNC7(conn_state->connector);
	struct intel_hdcp *hdcp = &connector->hdcp;
	bool content_protection_type_changed =
			(conn_state->hdcp_content_type != hdcp->content_type &&
			 conn_state->content_protection !=
			 DRM_MODE_CONTENT_PROTECTION_UNDESIRED);

	if (!FUNC0(crtc_state, INTEL_OUTPUT_HDMI))
		FUNC1(encoder, crtc_state, conn_state);

	/*
	 * During the HDCP encryption session if Type change is requested,
	 * disable the HDCP and reenable it with new TYPE value.
	 */
	if (conn_state->content_protection ==
	    DRM_MODE_CONTENT_PROTECTION_UNDESIRED ||
	    content_protection_type_changed)
		FUNC2(connector);

	/*
	 * Mark the hdcp state as DESIRED after the hdcp disable of type
	 * change procedure.
	 */
	if (content_protection_type_changed) {
		FUNC4(&hdcp->mutex);
		hdcp->value = DRM_MODE_CONTENT_PROTECTION_DESIRED;
		FUNC6(&hdcp->prop_work);
		FUNC5(&hdcp->mutex);
	}

	if (conn_state->content_protection ==
	    DRM_MODE_CONTENT_PROTECTION_DESIRED ||
	    content_protection_type_changed)
		FUNC3(connector, (u8)conn_state->hdcp_content_type);
}