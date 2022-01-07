
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_encoder {int dummy; } ;
struct nouveau_drm {int dummy; } ;
struct nouveau_connector {scalar_t__ type; } ;
struct drm_connector {scalar_t__ force; int status; int name; int dev; } ;


 scalar_t__ DCB_CONNECTOR_DVI_I ;
 int DCB_OUTPUT_ANALOG ;
 int DCB_OUTPUT_ANY ;
 int DCB_OUTPUT_TMDS ;
 scalar_t__ DRM_FORCE_ON_DIGITAL ;
 int NV_ERROR (struct nouveau_drm*,char*,int ) ;
 int connector_status_disconnected ;
 struct nouveau_encoder* find_encoder (struct drm_connector*,int) ;
 struct nouveau_connector* nouveau_connector (struct drm_connector*) ;
 int nouveau_connector_set_encoder (struct drm_connector*,struct nouveau_encoder*) ;
 struct nouveau_drm* nouveau_drm (int ) ;

__attribute__((used)) static void
nouveau_connector_force(struct drm_connector *connector)
{
 struct nouveau_drm *drm = nouveau_drm(connector->dev);
 struct nouveau_connector *nv_connector = nouveau_connector(connector);
 struct nouveau_encoder *nv_encoder;
 int type;

 if (nv_connector->type == DCB_CONNECTOR_DVI_I) {
  if (connector->force == DRM_FORCE_ON_DIGITAL)
   type = DCB_OUTPUT_TMDS;
  else
   type = DCB_OUTPUT_ANALOG;
 } else
  type = DCB_OUTPUT_ANY;

 nv_encoder = find_encoder(connector, type);
 if (!nv_encoder) {
  NV_ERROR(drm, "can't find encoder to force %s on!\n",
    connector->name);
  connector->status = connector_status_disconnected;
  return;
 }

 nouveau_connector_set_encoder(connector, nv_encoder);
}
