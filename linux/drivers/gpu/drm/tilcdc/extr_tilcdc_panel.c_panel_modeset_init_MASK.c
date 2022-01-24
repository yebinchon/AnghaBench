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
struct tilcdc_module {int dummy; } ;
struct tilcdc_drm_private {int /*<<< orphan*/  crtc; int /*<<< orphan*/  num_connectors; struct drm_connector** connectors; int /*<<< orphan*/  num_encoders; struct drm_encoder** encoders; } ;
struct panel_module {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {struct tilcdc_drm_private* dev_private; } ;
struct drm_connector {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mod; } ;
struct TYPE_3__ {int /*<<< orphan*/  info; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct drm_connector* FUNC0 (struct drm_device*,struct panel_module*,struct drm_encoder*) ; 
 struct drm_encoder* FUNC1 (struct drm_device*,struct panel_module*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct drm_encoder*) ; 
 struct panel_module* FUNC4 (struct tilcdc_module*) ; 

__attribute__((used)) static int FUNC5(struct tilcdc_module *mod, struct drm_device *dev)
{
	struct panel_module *panel_mod = FUNC4(mod);
	struct tilcdc_drm_private *priv = dev->dev_private;
	struct drm_encoder *encoder;
	struct drm_connector *connector;

	encoder = FUNC1(dev, panel_mod);
	if (!encoder)
		return -ENOMEM;

	connector = FUNC0(dev, panel_mod, encoder);
	if (!connector)
		return -ENOMEM;

	priv->encoders[priv->num_encoders++] = encoder;
	priv->connectors[priv->num_connectors++] = connector;

	FUNC2(priv->crtc,
				   FUNC3(encoder)->mod->info);

	return 0;
}