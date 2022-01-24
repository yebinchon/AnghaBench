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
struct drm_modeset_acquire_ctx {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  connection_mutex; } ;
struct drm_device {TYPE_2__ mode_config; } ;
struct drm_connector_helper_funcs {int (* detect_ctx ) (struct drm_connector*,struct drm_modeset_acquire_ctx*,int) ;} ;
struct drm_connector {TYPE_1__* funcs; struct drm_device* dev; struct drm_connector_helper_funcs* helper_private; } ;
struct TYPE_3__ {int (* detect ) (struct drm_connector*,int) ;} ;

/* Variables and functions */
 int connector_status_connected ; 
 int FUNC0 (struct drm_connector*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct drm_modeset_acquire_ctx*) ; 
 int FUNC2 (struct drm_connector*,struct drm_modeset_acquire_ctx*,int) ; 
 int FUNC3 (struct drm_connector*,int) ; 

int
FUNC4(struct drm_connector *connector,
			struct drm_modeset_acquire_ctx *ctx,
			bool force)
{
	const struct drm_connector_helper_funcs *funcs = connector->helper_private;
	struct drm_device *dev = connector->dev;
	int ret;

	if (!ctx)
		return FUNC0(connector, force);

	ret = FUNC1(&dev->mode_config.connection_mutex, ctx);
	if (ret)
		return ret;

	if (funcs->detect_ctx)
		return funcs->detect_ctx(connector, ctx, force);
	else if (connector->funcs->detect)
		return connector->funcs->detect(connector, force);
	else
		return connector_status_connected;
}