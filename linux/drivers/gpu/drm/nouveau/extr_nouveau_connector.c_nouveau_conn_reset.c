
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int mode; } ;
struct TYPE_13__ {int mode; TYPE_2__ underscan; } ;
struct TYPE_10__ {int color_vibrance; int vibrant_hue; } ;
struct TYPE_8__ {int depth; int mode; } ;
struct nouveau_conn_atom {TYPE_6__ scaler; TYPE_3__ procamp; TYPE_1__ dither; int state; } ;
struct drm_connector {int connector_type; int dev; scalar_t__ state; } ;
struct TYPE_11__ {scalar_t__ oclass; } ;
struct TYPE_12__ {TYPE_4__ object; } ;
struct TYPE_14__ {TYPE_5__ disp; } ;


 int DITHERING_DEPTH_AUTO ;
 int DITHERING_MODE_AUTO ;

 int DRM_MODE_SCALE_FULLSCREEN ;
 int DRM_MODE_SCALE_NONE ;
 int GFP_KERNEL ;
 scalar_t__ NV50_DISP ;
 int UNDERSCAN_OFF ;
 scalar_t__ WARN_ON (int) ;
 int __drm_atomic_helper_connector_reset (struct drm_connector*,int *) ;
 struct nouveau_conn_atom* kzalloc (int,int ) ;
 int nouveau_conn_atomic_destroy_state (struct drm_connector*,scalar_t__) ;
 TYPE_7__* nouveau_display (int ) ;

void
nouveau_conn_reset(struct drm_connector *connector)
{
 struct nouveau_conn_atom *asyc;

 if (WARN_ON(!(asyc = kzalloc(sizeof(*asyc), GFP_KERNEL))))
  return;

 if (connector->state)
  nouveau_conn_atomic_destroy_state(connector, connector->state);
 __drm_atomic_helper_connector_reset(connector, &asyc->state);
 asyc->dither.mode = DITHERING_MODE_AUTO;
 asyc->dither.depth = DITHERING_DEPTH_AUTO;
 asyc->scaler.mode = DRM_MODE_SCALE_NONE;
 asyc->scaler.underscan.mode = UNDERSCAN_OFF;
 asyc->procamp.color_vibrance = 150;
 asyc->procamp.vibrant_hue = 90;

 if (nouveau_display(connector->dev)->disp.object.oclass < NV50_DISP) {
  switch (connector->connector_type) {
  case 128:

   asyc->scaler.mode = DRM_MODE_SCALE_FULLSCREEN;
   break;
  default:
   break;
  }
 }
}
