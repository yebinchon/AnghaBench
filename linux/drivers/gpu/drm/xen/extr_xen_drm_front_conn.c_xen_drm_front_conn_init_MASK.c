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
struct xen_drm_front_drm_pipeline {int conn_connected; } ;
struct xen_drm_front_drm_info {int /*<<< orphan*/  drm_dev; } ;
struct drm_connector {int polled; } ;

/* Variables and functions */
 int DRM_CONNECTOR_POLL_CONNECT ; 
 int DRM_CONNECTOR_POLL_DISCONNECT ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_VIRTUAL ; 
 int /*<<< orphan*/  connector_funcs ; 
 int /*<<< orphan*/  connector_helper_funcs ; 
 int /*<<< orphan*/  FUNC0 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct xen_drm_front_drm_pipeline* FUNC2 (struct drm_connector*) ; 

int FUNC3(struct xen_drm_front_drm_info *drm_info,
			    struct drm_connector *connector)
{
	struct xen_drm_front_drm_pipeline *pipeline =
			FUNC2(connector);

	FUNC0(connector, &connector_helper_funcs);

	pipeline->conn_connected = true;

	connector->polled = DRM_CONNECTOR_POLL_CONNECT |
			DRM_CONNECTOR_POLL_DISCONNECT;

	return FUNC1(drm_info->drm_dev, connector,
				  &connector_funcs, DRM_MODE_CONNECTOR_VIRTUAL);
}