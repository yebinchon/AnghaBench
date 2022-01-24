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
struct ptn3460_bridge {int /*<<< orphan*/  bridge; struct edid* edid; int /*<<< orphan*/  enabled; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EDID_LENGTH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PTN3460_EDID_ADDR ; 
 struct ptn3460_bridge* FUNC1 (struct drm_connector*) ; 
 int FUNC2 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct ptn3460_bridge*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct drm_connector *connector)
{
	struct ptn3460_bridge *ptn_bridge;
	u8 *edid;
	int ret, num_modes = 0;
	bool power_off;

	ptn_bridge = FUNC1(connector);

	if (ptn_bridge->edid)
		return FUNC2(connector, ptn_bridge->edid);

	power_off = !ptn_bridge->enabled;
	FUNC7(&ptn_bridge->bridge);

	edid = FUNC5(EDID_LENGTH, GFP_KERNEL);
	if (!edid) {
		FUNC0("Failed to allocate EDID\n");
		return 0;
	}

	ret = FUNC8(ptn_bridge, PTN3460_EDID_ADDR, edid,
			EDID_LENGTH);
	if (ret) {
		FUNC4(edid);
		goto out;
	}

	ptn_bridge->edid = (struct edid *)edid;
	FUNC3(connector, ptn_bridge->edid);

	num_modes = FUNC2(connector, ptn_bridge->edid);

out:
	if (power_off)
		FUNC6(&ptn_bridge->bridge);

	return num_modes;
}