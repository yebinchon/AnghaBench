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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  tv_res ;
struct psb_intel_sdvo_sdtv_resolution_request {int dummy; } ;
struct psb_intel_sdvo {int tv_format_index; int /*<<< orphan*/  attached_output; } ;
struct drm_display_mode {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  format_map ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SDVO_CMD_GET_SDTV_RESOLUTION_SUPPORT ; 
 struct drm_display_mode* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,struct drm_display_mode*) ; 
 struct psb_intel_sdvo* FUNC4 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC5 (struct psb_intel_sdvo_sdtv_resolution_request*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct psb_intel_sdvo*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct psb_intel_sdvo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct psb_intel_sdvo*,int /*<<< orphan*/ ,struct psb_intel_sdvo_sdtv_resolution_request*,int) ; 
 int /*<<< orphan*/ * sdvo_tv_modes ; 

__attribute__((used)) static void FUNC10(struct drm_connector *connector)
{
	struct psb_intel_sdvo *psb_intel_sdvo = FUNC4(connector);
	struct psb_intel_sdvo_sdtv_resolution_request tv_res;
	uint32_t reply = 0, format_map = 0;
	int i;

	/* Read the list of supported input resolutions for the selected TV
	 * format.
	 */
	format_map = 1 << psb_intel_sdvo->tv_format_index;
	FUNC5(&tv_res, &format_map,
	       FUNC6(sizeof(format_map), sizeof(struct psb_intel_sdvo_sdtv_resolution_request)));

	if (!FUNC8(psb_intel_sdvo, psb_intel_sdvo->attached_output))
		return;

	FUNC1(sizeof(tv_res) != 3);
	if (!FUNC9(psb_intel_sdvo,
				  SDVO_CMD_GET_SDTV_RESOLUTION_SUPPORT,
				  &tv_res, sizeof(tv_res)))
		return;
	if (!FUNC7(psb_intel_sdvo, &reply, 3))
		return;

	for (i = 0; i < FUNC0(sdvo_tv_modes); i++)
		if (reply & (1 << i)) {
			struct drm_display_mode *nmode;
			nmode = FUNC2(connector->dev,
						   &sdvo_tv_modes[i]);
			if (nmode)
				FUNC3(connector, nmode);
		}
}