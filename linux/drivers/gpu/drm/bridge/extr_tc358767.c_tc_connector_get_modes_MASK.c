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
struct TYPE_2__ {int /*<<< orphan*/  ddc; } ;
struct tc_data {struct edid* edid; TYPE_1__ aux; int /*<<< orphan*/  panel; int /*<<< orphan*/  dev; } ;
struct edid {int dummy; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 struct tc_data* FUNC0 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*,struct edid*) ; 
 struct edid* FUNC4 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct edid*) ; 
 int FUNC7 (struct tc_data*) ; 

__attribute__((used)) static int FUNC8(struct drm_connector *connector)
{
	struct tc_data *tc = FUNC0(connector);
	struct edid *edid;
	int count;
	int ret;

	ret = FUNC7(tc);
	if (ret < 0) {
		FUNC1(tc->dev, "failed to read display props: %d\n", ret);
		return 0;
	}

	count = FUNC5(tc->panel);
	if (count > 0)
		return count;

	edid = FUNC4(connector, &tc->aux.ddc);

	FUNC6(tc->edid);
	tc->edid = edid;
	if (!edid)
		return 0;

	FUNC3(connector, edid);
	count = FUNC2(connector, edid);

	return count;
}