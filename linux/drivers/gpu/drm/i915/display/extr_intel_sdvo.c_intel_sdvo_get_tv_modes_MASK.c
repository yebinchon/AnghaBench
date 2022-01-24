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
typedef  int /*<<< orphan*/  tv_res ;
struct intel_sdvo_sdtv_resolution_request {int dummy; } ;
struct intel_sdvo {int /*<<< orphan*/  attached_output; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_4__ {int mode; } ;
struct drm_connector_state {TYPE_2__ tv; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
struct drm_connector {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; TYPE_1__ base; struct drm_connector_state* state; } ;
typedef  int /*<<< orphan*/  format_map ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDVO_CMD_GET_SDTV_RESOLUTION_SUPPORT ; 
 struct drm_display_mode* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*,struct drm_display_mode*) ; 
 struct intel_sdvo* FUNC5 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_sdvo*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_sdvo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_sdvo*,int /*<<< orphan*/ ,struct intel_sdvo_sdtv_resolution_request*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_sdvo_sdtv_resolution_request*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/ * sdvo_tv_modes ; 

__attribute__((used)) static void FUNC11(struct drm_connector *connector)
{
	struct intel_sdvo *intel_sdvo = FUNC5(connector);
	const struct drm_connector_state *conn_state = connector->state;
	struct intel_sdvo_sdtv_resolution_request tv_res;
	u32 reply = 0, format_map = 0;
	int i;

	FUNC2("[CONNECTOR:%d:%s]\n",
		      connector->base.id, connector->name);

	/*
	 * Read the list of supported input resolutions for the selected TV
	 * format.
	 */
	format_map = 1 << conn_state->tv.mode;
	FUNC9(&tv_res, &format_map,
	       FUNC10(sizeof(format_map), sizeof(struct intel_sdvo_sdtv_resolution_request)));

	if (!FUNC7(intel_sdvo, intel_sdvo->attached_output))
		return;

	FUNC1(sizeof(tv_res) != 3);
	if (!FUNC8(intel_sdvo,
				  SDVO_CMD_GET_SDTV_RESOLUTION_SUPPORT,
				  &tv_res, sizeof(tv_res)))
		return;
	if (!FUNC6(intel_sdvo, &reply, 3))
		return;

	for (i = 0; i < FUNC0(sdvo_tv_modes); i++)
		if (reply & (1 << i)) {
			struct drm_display_mode *nmode;
			nmode = FUNC3(connector->dev,
						   &sdvo_tv_modes[i]);
			if (nmode)
				FUNC4(connector, nmode);
		}
}