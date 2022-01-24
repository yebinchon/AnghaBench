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
struct edid {int dummy; } ;
struct drm_connector {int has_tile; int /*<<< orphan*/ * tile_group; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDID_LENGTH ; 
 void* FUNC0 (struct edid*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct drm_connector*,void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct drm_connector *connector,
			      struct edid *edid)
{
	void *displayid = NULL;
	int ret;
	connector->has_tile = false;
	displayid = FUNC0(edid);
	if (!displayid) {
		/* drop reference to any tile group we had */
		goto out_drop_ref;
	}

	ret = FUNC2(connector, displayid, EDID_LENGTH, true);
	if (ret < 0)
		goto out_drop_ref;
	if (!connector->has_tile)
		goto out_drop_ref;
	return;
out_drop_ref:
	if (connector->tile_group) {
		FUNC1(connector->dev, connector->tile_group);
		connector->tile_group = NULL;
	}
	return;
}