#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct edid {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  mutex; } ;
struct drm_device {TYPE_5__ mode_config; } ;
struct drm_connector {scalar_t__ force; struct drm_device* dev; } ;
struct TYPE_8__ {scalar_t__ length; scalar_t__ raw_edid; } ;
struct dc_sink {scalar_t__ sink_signal; TYPE_3__ dc_edid; } ;
struct TYPE_9__ {int /*<<< orphan*/  aux; } ;
struct TYPE_6__ {int mst_state; } ;
struct amdgpu_dm_connector {struct edid* edid; struct dc_sink* dc_sink; scalar_t__ num_modes; TYPE_4__ dm_dp_aux; int /*<<< orphan*/  connector_id; struct dc_sink* dc_em_sink; struct drm_connector base; TYPE_2__* dc_link; TYPE_1__ mst_mgr; } ;
struct TYPE_7__ {struct dc_sink* local_sink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ DRM_FORCE_UNSPECIFIED ; 
 scalar_t__ SIGNAL_TYPE_DISPLAY_PORT_MST ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC2 (struct dc_sink*) ; 
 int /*<<< orphan*/  FUNC3 (struct dc_sink*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct edid*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct amdgpu_dm_connector *aconnector)
{
	struct drm_connector *connector = &aconnector->base;
	struct drm_device *dev = connector->dev;
	struct dc_sink *sink;

	/* MST handled by drm_mst framework */
	if (aconnector->mst_mgr.mst_state == true)
		return;


	sink = aconnector->dc_link->local_sink;
	if (sink)
		FUNC3(sink);

	/*
	 * Edid mgmt connector gets first update only in mode_valid hook and then
	 * the connector sink is set to either fake or physical sink depends on link status.
	 * Skip if already done during boot.
	 */
	if (aconnector->base.force != DRM_FORCE_UNSPECIFIED
			&& aconnector->dc_em_sink) {

		/*
		 * For S3 resume with headless use eml_sink to fake stream
		 * because on resume connector->sink is set to NULL
		 */
		FUNC7(&dev->mode_config.mutex);

		if (sink) {
			if (aconnector->dc_sink) {
				FUNC1(connector, NULL);
				/*
				 * retain and release below are used to
				 * bump up refcount for sink because the link doesn't point
				 * to it anymore after disconnect, so on next crtc to connector
				 * reshuffle by UMD we will get into unwanted dc_sink release
				 */
				FUNC2(aconnector->dc_sink);
			}
			aconnector->dc_sink = sink;
			FUNC3(aconnector->dc_sink);
			FUNC1(connector,
					aconnector->edid);
		} else {
			FUNC1(connector, NULL);
			if (!aconnector->dc_sink) {
				aconnector->dc_sink = aconnector->dc_em_sink;
				FUNC3(aconnector->dc_sink);
			}
		}

		FUNC8(&dev->mode_config.mutex);

		if (sink)
			FUNC2(sink);
		return;
	}

	/*
	 * TODO: temporary guard to look for proper fix
	 * if this sink is MST sink, we should not do anything
	 */
	if (sink && sink->sink_signal == SIGNAL_TYPE_DISPLAY_PORT_MST) {
		FUNC2(sink);
		return;
	}

	if (aconnector->dc_sink == sink) {
		/*
		 * We got a DP short pulse (Link Loss, DP CTS, etc...).
		 * Do nothing!!
		 */
		FUNC0("DCHPD: connector_id=%d: dc_sink didn't change.\n",
				aconnector->connector_id);
		if (sink)
			FUNC2(sink);
		return;
	}

	FUNC0("DCHPD: connector_id=%d: Old sink=%p New sink=%p\n",
		aconnector->connector_id, aconnector->dc_sink, sink);

	FUNC7(&dev->mode_config.mutex);

	/*
	 * 1. Update status of the drm connector
	 * 2. Send an event and let userspace tell us what to do
	 */
	if (sink) {
		/*
		 * TODO: check if we still need the S3 mode update workaround.
		 * If yes, put it here.
		 */
		if (aconnector->dc_sink)
			FUNC1(connector, NULL);

		aconnector->dc_sink = sink;
		FUNC3(aconnector->dc_sink);
		if (sink->dc_edid.length == 0) {
			aconnector->edid = NULL;
			FUNC6(&aconnector->dm_dp_aux.aux);
		} else {
			aconnector->edid =
				(struct edid *) sink->dc_edid.raw_edid;


			FUNC4(connector,
					aconnector->edid);
			FUNC5(&aconnector->dm_dp_aux.aux,
					    aconnector->edid);
		}
		FUNC1(connector, aconnector->edid);

	} else {
		FUNC6(&aconnector->dm_dp_aux.aux);
		FUNC1(connector, NULL);
		FUNC4(connector, NULL);
		aconnector->num_modes = 0;
		FUNC2(aconnector->dc_sink);
		aconnector->dc_sink = NULL;
		aconnector->edid = NULL;
	}

	FUNC8(&dev->mode_config.mutex);

	if (sink)
		FUNC2(sink);
}