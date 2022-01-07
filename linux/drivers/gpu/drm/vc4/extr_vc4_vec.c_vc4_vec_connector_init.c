
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_connector {int interlace_allowed; int base; } ;
struct vc4_vec_connector {struct vc4_vec* vec; int encoder; struct drm_connector base; } ;
struct vc4_vec {int encoder; int * tv_mode; } ;
struct TYPE_2__ {int tv_mode_property; } ;
struct drm_device {TYPE_1__ mode_config; int dev; } ;


 int DRM_MODE_CONNECTOR_Composite ;
 int ENOMEM ;
 struct drm_connector* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 size_t VC4_VEC_TV_MODE_NTSC ;
 struct vc4_vec_connector* devm_kzalloc (int ,int,int ) ;
 int drm_connector_attach_encoder (struct drm_connector*,int ) ;
 int drm_connector_helper_add (struct drm_connector*,int *) ;
 int drm_connector_init (struct drm_device*,struct drm_connector*,int *,int ) ;
 int drm_object_attach_property (int *,int ,size_t) ;
 int vc4_vec_connector_funcs ;
 int vc4_vec_connector_helper_funcs ;
 int * vc4_vec_tv_modes ;

__attribute__((used)) static struct drm_connector *vc4_vec_connector_init(struct drm_device *dev,
          struct vc4_vec *vec)
{
 struct drm_connector *connector = ((void*)0);
 struct vc4_vec_connector *vec_connector;

 vec_connector = devm_kzalloc(dev->dev, sizeof(*vec_connector),
         GFP_KERNEL);
 if (!vec_connector)
  return ERR_PTR(-ENOMEM);

 connector = &vec_connector->base;
 connector->interlace_allowed = 1;

 vec_connector->encoder = vec->encoder;
 vec_connector->vec = vec;

 drm_connector_init(dev, connector, &vc4_vec_connector_funcs,
      DRM_MODE_CONNECTOR_Composite);
 drm_connector_helper_add(connector, &vc4_vec_connector_helper_funcs);

 drm_object_attach_property(&connector->base,
       dev->mode_config.tv_mode_property,
       VC4_VEC_TV_MODE_NTSC);
 vec->tv_mode = &vc4_vec_tv_modes[VC4_VEC_TV_MODE_NTSC];

 drm_connector_attach_encoder(connector, vec->encoder);

 return connector;
}
