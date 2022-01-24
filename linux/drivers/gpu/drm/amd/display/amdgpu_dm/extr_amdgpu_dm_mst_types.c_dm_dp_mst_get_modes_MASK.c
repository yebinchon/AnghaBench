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
typedef  int /*<<< orphan*/  uint8_t ;
struct edid {int extensions; } ;
struct drm_connector {int dummy; } ;
struct dc_sink_init_data {int /*<<< orphan*/  sink_signal; int /*<<< orphan*/  link; } ;
struct dc_sink {scalar_t__ sink_signal; struct amdgpu_dm_connector* priv; } ;
struct amdgpu_dm_connector {struct edid* edid; int /*<<< orphan*/  base; struct dc_sink* dc_sink; int /*<<< orphan*/  dc_link; int /*<<< orphan*/  port; TYPE_1__* mst_port; } ;
struct TYPE_2__ {int /*<<< orphan*/  mst_mgr; } ;

/* Variables and functions */
 int EDID_LENGTH ; 
 int /*<<< orphan*/  SIGNAL_TYPE_DISPLAY_PORT_MST ; 
 scalar_t__ SIGNAL_TYPE_VIRTUAL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_connector*,struct edid*) ; 
 struct dc_sink* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct dc_sink_init_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct dc_sink*) ; 
 int FUNC3 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct edid*) ; 
 struct edid* FUNC5 (struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct amdgpu_dm_connector* FUNC6 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC7(struct drm_connector *connector)
{
	struct amdgpu_dm_connector *aconnector = FUNC6(connector);
	int ret = 0;

	if (!aconnector)
		return FUNC3(connector, NULL);

	if (!aconnector->edid) {
		struct edid *edid;
		edid = FUNC5(connector, &aconnector->mst_port->mst_mgr, aconnector->port);

		if (!edid) {
			FUNC4(
				&aconnector->base,
				NULL);
			return ret;
		}

		aconnector->edid = edid;
	}

	if (aconnector->dc_sink && aconnector->dc_sink->sink_signal == SIGNAL_TYPE_VIRTUAL) {
		FUNC2(aconnector->dc_sink);
		aconnector->dc_sink = NULL;
	}

	if (!aconnector->dc_sink) {
		struct dc_sink *dc_sink;
		struct dc_sink_init_data init_params = {
				.link = aconnector->dc_link,
				.sink_signal = SIGNAL_TYPE_DISPLAY_PORT_MST };
		dc_sink = FUNC1(
			aconnector->dc_link,
			(uint8_t *)aconnector->edid,
			(aconnector->edid->extensions + 1) * EDID_LENGTH,
			&init_params);

		dc_sink->priv = aconnector;
		/* dc_link_add_remote_sink returns a new reference */
		aconnector->dc_sink = dc_sink;

		if (aconnector->dc_sink)
			FUNC0(
					connector, aconnector->edid);

	}

	FUNC4(
					&aconnector->base, aconnector->edid);

	ret = FUNC3(connector, aconnector->edid);

	return ret;
}