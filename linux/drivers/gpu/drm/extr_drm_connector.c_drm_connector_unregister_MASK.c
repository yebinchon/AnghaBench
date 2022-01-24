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
struct drm_connector {scalar_t__ registration_state; int /*<<< orphan*/  mutex; TYPE_1__* funcs; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* early_unregister ) (struct drm_connector*) ;} ;

/* Variables and functions */
 scalar_t__ DRM_CONNECTOR_REGISTERED ; 
 scalar_t__ DRM_CONNECTOR_UNREGISTERED ; 
 int /*<<< orphan*/  FUNC0 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*) ; 

void FUNC5(struct drm_connector *connector)
{
	FUNC2(&connector->mutex);
	if (connector->registration_state != DRM_CONNECTOR_REGISTERED) {
		FUNC3(&connector->mutex);
		return;
	}

	if (connector->funcs->early_unregister)
		connector->funcs->early_unregister(connector);

	FUNC1(connector);
	FUNC0(connector);

	connector->registration_state = DRM_CONNECTOR_UNREGISTERED;
	FUNC3(&connector->mutex);
}