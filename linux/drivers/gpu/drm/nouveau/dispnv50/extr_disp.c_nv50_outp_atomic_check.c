
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_connector {int native_mode; } ;
struct drm_encoder {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_connector_state {int connector; } ;


 struct nouveau_connector* nouveau_connector (int ) ;
 int nv50_outp_atomic_check_view (struct drm_encoder*,struct drm_crtc_state*,struct drm_connector_state*,int ) ;

__attribute__((used)) static int
nv50_outp_atomic_check(struct drm_encoder *encoder,
         struct drm_crtc_state *crtc_state,
         struct drm_connector_state *conn_state)
{
 struct nouveau_connector *nv_connector =
  nouveau_connector(conn_state->connector);
 return nv50_outp_atomic_check_view(encoder, crtc_state, conn_state,
        nv_connector->native_mode);
}
