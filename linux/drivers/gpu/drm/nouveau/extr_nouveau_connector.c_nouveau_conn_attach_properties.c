
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int oclass; } ;
struct TYPE_9__ {TYPE_2__ object; } ;
struct nouveau_display {scalar_t__ dithering_depth; scalar_t__ dithering_mode; TYPE_3__ disp; scalar_t__ color_vibrance_property; scalar_t__ vibrant_hue_property; scalar_t__ underscan_vborder_property; scalar_t__ underscan_hborder_property; scalar_t__ underscan_property; } ;
struct TYPE_12__ {int depth; int mode; } ;
struct TYPE_11__ {int mode; } ;
struct TYPE_7__ {int color_vibrance; int vibrant_hue; } ;
struct nouveau_conn_atom {TYPE_6__ dither; TYPE_5__ scaler; TYPE_1__ procamp; } ;
struct TYPE_10__ {scalar_t__ scaling_mode_property; scalar_t__ dvi_i_subconnector_property; } ;
struct drm_device {TYPE_4__ mode_config; } ;
struct drm_connector {int connector_type; int base; int state; struct drm_device* dev; } ;


 int DRM_MODE_CONNECTOR_DVID ;
 int DRM_MODE_CONNECTOR_DVII ;
 int DRM_MODE_CONNECTOR_DisplayPort ;
 int DRM_MODE_CONNECTOR_HDMIA ;


 int NV50_DISP ;
 int UNDERSCAN_OFF ;
 int drm_object_attach_property (int *,scalar_t__,int ) ;
 struct nouveau_conn_atom* nouveau_conn_atom (int ) ;
 struct nouveau_display* nouveau_display (struct drm_device*) ;

void
nouveau_conn_attach_properties(struct drm_connector *connector)
{
 struct drm_device *dev = connector->dev;
 struct nouveau_conn_atom *armc = nouveau_conn_atom(connector->state);
 struct nouveau_display *disp = nouveau_display(dev);


 if (connector->connector_type == DRM_MODE_CONNECTOR_DVII)
  drm_object_attach_property(&connector->base, dev->mode_config.
        dvi_i_subconnector_property, 0);


 if (disp->underscan_property &&
     (connector->connector_type == DRM_MODE_CONNECTOR_DVID ||
      connector->connector_type == DRM_MODE_CONNECTOR_DVII ||
      connector->connector_type == DRM_MODE_CONNECTOR_HDMIA ||
      connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort)) {
  drm_object_attach_property(&connector->base,
        disp->underscan_property,
        UNDERSCAN_OFF);
  drm_object_attach_property(&connector->base,
        disp->underscan_hborder_property, 0);
  drm_object_attach_property(&connector->base,
        disp->underscan_vborder_property, 0);
 }


 if (disp->vibrant_hue_property)
  drm_object_attach_property(&connector->base,
        disp->vibrant_hue_property,
        armc->procamp.vibrant_hue);
 if (disp->color_vibrance_property)
  drm_object_attach_property(&connector->base,
        disp->color_vibrance_property,
        armc->procamp.color_vibrance);


 switch (connector->connector_type) {
 case 129:
  break;
 case 128:
  if (disp->disp.object.oclass < NV50_DISP)
   break;

 default:
  drm_object_attach_property(&connector->base, dev->mode_config.
        scaling_mode_property,
        armc->scaler.mode);
  break;
 }


 switch (connector->connector_type) {
 case 129:
 case 128:
  break;
 default:
  if (disp->dithering_mode) {
   drm_object_attach_property(&connector->base,
         disp->dithering_mode,
         armc->dither.mode);
  }
  if (disp->dithering_depth) {
   drm_object_attach_property(&connector->base,
         disp->dithering_depth,
         armc->dither.depth);
  }
  break;
 }
}
