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
struct drm_connector {int polled; } ;
struct udl_drm_connector {struct drm_connector connector; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int DRM_CONNECTOR_POLL_CONNECT ; 
 int DRM_CONNECTOR_POLL_DISCONNECT ; 
 int DRM_CONNECTOR_POLL_HPD ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_DVII ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_connector*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*) ; 
 struct udl_drm_connector* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  udl_connector_funcs ; 
 int /*<<< orphan*/  udl_connector_helper_funcs ; 

int FUNC5(struct drm_device *dev, struct drm_encoder *encoder)
{
	struct udl_drm_connector *udl_connector;
	struct drm_connector *connector;

	udl_connector = FUNC4(sizeof(struct udl_drm_connector), GFP_KERNEL);
	if (!udl_connector)
		return -ENOMEM;

	connector = &udl_connector->connector;
	FUNC2(dev, connector, &udl_connector_funcs,
			   DRM_MODE_CONNECTOR_DVII);
	FUNC1(connector, &udl_connector_helper_funcs);

	FUNC3(connector);
	FUNC0(connector, encoder);
	connector->polled = DRM_CONNECTOR_POLL_HPD |
		DRM_CONNECTOR_POLL_CONNECT | DRM_CONNECTOR_POLL_DISCONNECT;

	return 0;
}