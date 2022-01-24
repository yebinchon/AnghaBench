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
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int connector_status_connected ; 
 int connector_status_disconnected ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct xen_drm_front_drm_pipeline* FUNC1 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC2(struct drm_connector *connector,
			    struct drm_modeset_acquire_ctx *ctx,
			    bool force)
{
	struct xen_drm_front_drm_pipeline *pipeline =
			FUNC1(connector);

	if (FUNC0(connector->dev))
		pipeline->conn_connected = false;

	return pipeline->conn_connected ? connector_status_connected :
			connector_status_disconnected;
}