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
struct vbox_crtc {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  base; scalar_t__ doublescan_allowed; scalar_t__ interlace_allowed; } ;
struct vbox_connector {struct vbox_crtc* vbox_crtc; struct drm_connector base; } ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  suggested_y_property; int /*<<< orphan*/  suggested_x_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_CONNECTOR_VGA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_connector*,struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_connector*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vbox_connector* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vbox_connector_funcs ; 
 int /*<<< orphan*/  vbox_connector_helper_funcs ; 

__attribute__((used)) static int FUNC6(struct drm_device *dev,
			       struct vbox_crtc *vbox_crtc,
			       struct drm_encoder *encoder)
{
	struct vbox_connector *vbox_connector;
	struct drm_connector *connector;

	vbox_connector = FUNC5(sizeof(*vbox_connector), GFP_KERNEL);
	if (!vbox_connector)
		return -ENOMEM;

	connector = &vbox_connector->base;
	vbox_connector->vbox_crtc = vbox_crtc;

	FUNC2(dev, connector, &vbox_connector_funcs,
			   DRM_MODE_CONNECTOR_VGA);
	FUNC1(connector, &vbox_connector_helper_funcs);

	connector->interlace_allowed = 0;
	connector->doublescan_allowed = 0;

	FUNC3(dev);
	FUNC4(&connector->base,
				   dev->mode_config.suggested_x_property, 0);
	FUNC4(&connector->base,
				   dev->mode_config.suggested_y_property, 0);

	FUNC0(connector, encoder);

	return 0;
}