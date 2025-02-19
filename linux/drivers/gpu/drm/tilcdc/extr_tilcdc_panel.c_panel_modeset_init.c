
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tilcdc_module {int dummy; } ;
struct tilcdc_drm_private {int crtc; int num_connectors; struct drm_connector** connectors; int num_encoders; struct drm_encoder** encoders; } ;
struct panel_module {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {struct tilcdc_drm_private* dev_private; } ;
struct drm_connector {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mod; } ;
struct TYPE_3__ {int info; } ;


 int ENOMEM ;
 struct drm_connector* panel_connector_create (struct drm_device*,struct panel_module*,struct drm_encoder*) ;
 struct drm_encoder* panel_encoder_create (struct drm_device*,struct panel_module*) ;
 int tilcdc_crtc_set_panel_info (int ,int ) ;
 TYPE_2__* to_panel_encoder (struct drm_encoder*) ;
 struct panel_module* to_panel_module (struct tilcdc_module*) ;

__attribute__((used)) static int panel_modeset_init(struct tilcdc_module *mod, struct drm_device *dev)
{
 struct panel_module *panel_mod = to_panel_module(mod);
 struct tilcdc_drm_private *priv = dev->dev_private;
 struct drm_encoder *encoder;
 struct drm_connector *connector;

 encoder = panel_encoder_create(dev, panel_mod);
 if (!encoder)
  return -ENOMEM;

 connector = panel_connector_create(dev, panel_mod, encoder);
 if (!connector)
  return -ENOMEM;

 priv->encoders[priv->num_encoders++] = encoder;
 priv->connectors[priv->num_connectors++] = connector;

 tilcdc_crtc_set_panel_info(priv->crtc,
       to_panel_encoder(encoder)->mod->info);

 return 0;
}
