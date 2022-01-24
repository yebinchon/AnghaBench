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
struct TYPE_4__ {scalar_t__ non_desktop; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
struct drm_connector {TYPE_2__ display_info; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct drm_connector*,int) ; 

__attribute__((used)) static void FUNC2(struct drm_connector **connectors,
					  unsigned int connector_count,
					  bool *enabled)
{
	bool any_enabled = false;
	struct drm_connector *connector;
	int i = 0;

	for (i = 0; i < connector_count; i++) {
		connector = connectors[i];
		enabled[i] = FUNC1(connector, true);
		FUNC0("connector %d enabled? %s\n", connector->base.id,
			      connector->display_info.non_desktop ? "non desktop" : enabled[i] ? "yes" : "no");

		any_enabled |= enabled[i];
	}

	if (any_enabled)
		return;

	for (i = 0; i < connector_count; i++)
		enabled[i] = FUNC1(connectors[i], false);
}