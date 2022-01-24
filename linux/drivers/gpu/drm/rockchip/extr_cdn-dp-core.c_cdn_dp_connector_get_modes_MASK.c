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
struct edid {int /*<<< orphan*/  height_cm; int /*<<< orphan*/  width_cm; } ;
struct drm_connector {int dummy; } ;
struct cdn_dp_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  sink_has_audio; int /*<<< orphan*/  dev; struct edid* edid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cdn_dp_device* FUNC1 (struct drm_connector*) ; 
 int FUNC2 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC4 (struct edid*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct drm_connector *connector)
{
	struct cdn_dp_device *dp = FUNC1(connector);
	struct edid *edid;
	int ret = 0;

	FUNC5(&dp->lock);
	edid = dp->edid;
	if (edid) {
		FUNC0(dp->dev, "got edid: width[%d] x height[%d]\n",
				  edid->width_cm, edid->height_cm);

		dp->sink_has_audio = FUNC4(edid);
		ret = FUNC2(connector, edid);
		if (ret)
			FUNC3(connector,
								edid);
	}
	FUNC6(&dp->lock);

	return ret;
}