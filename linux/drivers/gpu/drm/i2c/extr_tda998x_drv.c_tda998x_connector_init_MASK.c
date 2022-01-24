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
struct TYPE_3__ {int /*<<< orphan*/  encoder; } ;
struct drm_connector {int interlace_allowed; int polled; } ;
struct tda998x_priv {TYPE_1__ bridge; struct drm_connector connector; TYPE_2__* hdmi; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ irq; } ;

/* Variables and functions */
 int DRM_CONNECTOR_POLL_CONNECT ; 
 int DRM_CONNECTOR_POLL_DISCONNECT ; 
 int DRM_CONNECTOR_POLL_HPD ; 
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_HDMIA ; 
 int /*<<< orphan*/  FUNC0 (struct drm_connector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct drm_device*,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tda998x_connector_funcs ; 
 int /*<<< orphan*/  tda998x_connector_helper_funcs ; 

__attribute__((used)) static int FUNC3(struct tda998x_priv *priv,
				  struct drm_device *drm)
{
	struct drm_connector *connector = &priv->connector;
	int ret;

	connector->interlace_allowed = 1;

	if (priv->hdmi->irq)
		connector->polled = DRM_CONNECTOR_POLL_HPD;
	else
		connector->polled = DRM_CONNECTOR_POLL_CONNECT |
			DRM_CONNECTOR_POLL_DISCONNECT;

	FUNC1(connector, &tda998x_connector_helper_funcs);
	ret = FUNC2(drm, connector, &tda998x_connector_funcs,
				 DRM_MODE_CONNECTOR_HDMIA);
	if (ret)
		return ret;

	FUNC0(&priv->connector,
				     priv->bridge.encoder);

	return 0;
}