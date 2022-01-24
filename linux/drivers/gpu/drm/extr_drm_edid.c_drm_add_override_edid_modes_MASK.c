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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct drm_connector*,struct edid*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*,struct edid*) ; 
 struct edid* FUNC3 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (struct edid*) ; 

int FUNC5(struct drm_connector *connector)
{
	struct edid *override;
	int num_modes = 0;

	override = FUNC3(connector);
	if (override) {
		FUNC2(connector, override);
		num_modes = FUNC1(connector, override);
		FUNC4(override);

		FUNC0("[CONNECTOR:%d:%s] adding %d modes via fallback override/firmware EDID\n",
			      connector->base.id, connector->name, num_modes);
	}

	return num_modes;
}