
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


typedef int uint64_t ;
struct nouveau_encoder {TYPE_2__* dcb; } ;
struct nouveau_connector {int dithering_mode; int scaling_mode; int base; struct nouveau_encoder* detected_encoder; } ;
struct TYPE_11__ {int mode; } ;
struct TYPE_10__ {int mode; } ;
struct nouveau_conn_atom {TYPE_4__ dither; TYPE_3__ scaler; int state; } ;
struct drm_property {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {TYPE_5__* encoder; TYPE_1__* funcs; int state; } ;
struct TYPE_14__ {int y; int x; int mode; } ;
struct TYPE_13__ {int (* set_property ) (struct drm_encoder*,struct drm_connector*,struct drm_property*,int ) ;} ;
struct TYPE_12__ {TYPE_7__* crtc; } ;
struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_8__ {int (* atomic_set_property ) (int *,int *,struct drm_property*,int ) ;} ;


 scalar_t__ DCB_OUTPUT_TV ;
 int EINVAL ;
 int drm_crtc_helper_set_mode (TYPE_7__*,int *,int ,int ,int *) ;
 TYPE_6__* get_slave_funcs (struct drm_encoder*) ;
 struct nouveau_conn_atom* nouveau_conn_atom (int ) ;
 struct nouveau_connector* nouveau_connector (struct drm_connector*) ;
 int stub1 (int *,int *,struct drm_property*,int ) ;
 int stub2 (struct drm_encoder*,struct drm_connector*,struct drm_property*,int ) ;
 struct drm_encoder* to_drm_encoder (struct nouveau_encoder*) ;

__attribute__((used)) static int
nouveau_connector_set_property(struct drm_connector *connector,
          struct drm_property *property, uint64_t value)
{
 struct nouveau_conn_atom *asyc = nouveau_conn_atom(connector->state);
 struct nouveau_connector *nv_connector = nouveau_connector(connector);
 struct nouveau_encoder *nv_encoder = nv_connector->detected_encoder;
 struct drm_encoder *encoder = to_drm_encoder(nv_encoder);
 int ret;

 ret = connector->funcs->atomic_set_property(&nv_connector->base,
          &asyc->state,
          property, value);
 if (ret) {
  if (nv_encoder && nv_encoder->dcb->type == DCB_OUTPUT_TV)
   return get_slave_funcs(encoder)->set_property(
    encoder, connector, property, value);
  return ret;
 }

 nv_connector->scaling_mode = asyc->scaler.mode;
 nv_connector->dithering_mode = asyc->dither.mode;

 if (connector->encoder && connector->encoder->crtc) {
  ret = drm_crtc_helper_set_mode(connector->encoder->crtc,
           &connector->encoder->crtc->mode,
            connector->encoder->crtc->x,
            connector->encoder->crtc->y,
            ((void*)0));
  if (!ret)
   return -EINVAL;
 }

 return 0;
}
