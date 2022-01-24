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
struct tv_mode {int /*<<< orphan*/  component_only; } ;
struct intel_tv {scalar_t__ type; } ;
struct drm_connector {TYPE_2__* state; } ;
struct TYPE_3__ {int mode; } ;
struct TYPE_4__ {TYPE_1__ tv; } ;

/* Variables and functions */
 int FUNC0 (struct tv_mode*) ; 
 scalar_t__ DRM_MODE_CONNECTOR_Component ; 
 struct intel_tv* FUNC1 (struct drm_connector*) ; 
 struct tv_mode* FUNC2 (TYPE_2__*) ; 
 struct tv_mode* tv_modes ; 

__attribute__((used)) static void FUNC3(struct drm_connector *connector)
{
	struct intel_tv *intel_tv = FUNC1(connector);
	const struct tv_mode *tv_mode = FUNC2(connector->state);
	int i;

	/* Component supports everything so we can keep the current mode */
	if (intel_tv->type == DRM_MODE_CONNECTOR_Component)
		return;

	/* If the current mode is fine don't change it */
	if (!tv_mode->component_only)
		return;

	for (i = 0; i < FUNC0(tv_modes); i++) {
		tv_mode = &tv_modes[i];

		if (!tv_mode->component_only)
			break;
	}

	connector->state->tv.mode = i;
}