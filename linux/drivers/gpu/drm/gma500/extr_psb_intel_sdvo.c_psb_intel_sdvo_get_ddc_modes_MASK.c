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
struct psb_intel_sdvo_connector {int dummy; } ;
struct edid {int input; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int DRM_EDID_INPUT_DIGITAL ; 
 int /*<<< orphan*/  FUNC0 (struct psb_intel_sdvo_connector*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC3 (struct edid*) ; 
 struct edid* FUNC4 (struct drm_connector*) ; 
 struct edid* FUNC5 (struct drm_connector*) ; 
 struct psb_intel_sdvo_connector* FUNC6 (struct drm_connector*) ; 

__attribute__((used)) static void FUNC7(struct drm_connector *connector)
{
	struct edid *edid;

	/* set the bus switch and get the modes */
	edid = FUNC5(connector);

	/*
	 * Mac mini hack.  On this device, the DVI-I connector shares one DDC
	 * link between analog and digital outputs. So, if the regular SDVO
	 * DDC fails, check to see if the analog output is disconnected, in
	 * which case we'll look there for the digital DDC data.
	 */
	if (edid == NULL)
		edid = FUNC4(connector);

	if (edid != NULL) {
		struct psb_intel_sdvo_connector *psb_intel_sdvo_connector = FUNC6(connector);
		bool monitor_is_digital = !!(edid->input & DRM_EDID_INPUT_DIGITAL);
		bool connector_is_digital = !!FUNC0(psb_intel_sdvo_connector);

		if (connector_is_digital == monitor_is_digital) {
			FUNC2(connector, edid);
			FUNC1(connector, edid);
		}

		FUNC3(edid);
	}
}