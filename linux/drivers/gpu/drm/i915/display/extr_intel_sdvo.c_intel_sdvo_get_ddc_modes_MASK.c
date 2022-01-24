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
struct edid {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct drm_connector {int /*<<< orphan*/  name; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct edid*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct edid*) ; 
 struct edid* FUNC4 (struct drm_connector*) ; 
 struct edid* FUNC5 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC6 (struct edid*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_connector*) ; 

__attribute__((used)) static void FUNC8(struct drm_connector *connector)
{
	struct edid *edid;

	FUNC0("[CONNECTOR:%d:%s]\n",
		      connector->base.id, connector->name);

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
		if (FUNC3(FUNC7(connector),
						      edid)) {
			FUNC2(connector, edid);
			FUNC1(connector, edid);
		}

		FUNC6(edid);
	}
}