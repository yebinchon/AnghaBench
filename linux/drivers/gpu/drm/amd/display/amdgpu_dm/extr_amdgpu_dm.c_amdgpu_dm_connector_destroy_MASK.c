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
struct drm_connector {int /*<<< orphan*/  base; TYPE_1__* dev; } ;
struct dc_link {int connector_signal; scalar_t__ type; } ;
struct TYPE_4__ {int /*<<< orphan*/  aux; } ;
struct amdgpu_dm_connector {struct drm_connector* i2c; TYPE_2__ dm_dp_aux; int /*<<< orphan*/ * dc_sink; int /*<<< orphan*/ * dc_em_sink; struct dc_link* dc_link; } ;
struct amdgpu_display_manager {int /*<<< orphan*/ * backlight_dev; } ;
struct amdgpu_device {struct amdgpu_display_manager dm; } ;
struct TYPE_3__ {struct amdgpu_device* dev_private; } ;

/* Variables and functions */
 int SIGNAL_TYPE_EDP ; 
 int SIGNAL_TYPE_LVDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ dc_connection_none ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_connector*) ; 
 struct amdgpu_dm_connector* FUNC7 (struct drm_connector*) ; 

__attribute__((used)) static void FUNC8(struct drm_connector *connector)
{
	struct amdgpu_dm_connector *aconnector = FUNC7(connector);
	const struct dc_link *link = aconnector->dc_link;
	struct amdgpu_device *adev = connector->dev->dev_private;
	struct amdgpu_display_manager *dm = &adev->dm;

#if defined(CONFIG_BACKLIGHT_CLASS_DEVICE) ||\
	defined(CONFIG_BACKLIGHT_CLASS_DEVICE_MODULE)

	if ((link->connector_signal & (SIGNAL_TYPE_EDP | SIGNAL_TYPE_LVDS)) &&
	    link->type != dc_connection_none &&
	    dm->backlight_dev) {
		backlight_device_unregister(dm->backlight_dev);
		dm->backlight_dev = NULL;
	}
#endif

	if (aconnector->dc_em_sink)
		FUNC1(aconnector->dc_em_sink);
	aconnector->dc_em_sink = NULL;
	if (aconnector->dc_sink)
		FUNC1(aconnector->dc_sink);
	aconnector->dc_sink = NULL;

	FUNC4(&aconnector->dm_dp_aux.aux);
	FUNC3(connector);
	FUNC2(connector);
	if (aconnector->i2c) {
		FUNC5(&aconnector->i2c->base);
		FUNC6(aconnector->i2c);
	}

	FUNC6(connector);
}