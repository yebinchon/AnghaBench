
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {scalar_t__ encoder_type; } ;
struct TYPE_2__ {struct drm_encoder base; } ;
struct nouveau_encoder {TYPE_1__ base; } ;
struct drm_connector {scalar_t__ connector_type; } ;


 int DCB_OUTPUT_ANY ;
 scalar_t__ DRM_MODE_CONNECTOR_DisplayPort ;
 scalar_t__ DRM_MODE_ENCODER_DPMST ;
 struct nouveau_encoder* find_encoder (struct drm_connector*,int ) ;

__attribute__((used)) static inline bool
nouveau_connector_is_mst(struct drm_connector *connector)
{
 const struct nouveau_encoder *nv_encoder;
 const struct drm_encoder *encoder;

 if (connector->connector_type != DRM_MODE_CONNECTOR_DisplayPort)
  return 0;

 nv_encoder = find_encoder(connector, DCB_OUTPUT_ANY);
 if (!nv_encoder)
  return 0;

 encoder = &nv_encoder->base.base;
 return encoder->encoder_type == DRM_MODE_ENCODER_DPMST;
}
