
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc4_vec_encoder {struct vc4_vec* vec; } ;
struct vc4_vec {int * tv_mode; } ;
struct drm_encoder {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct TYPE_2__ {size_t mode; } ;
struct drm_connector_state {TYPE_1__ tv; } ;


 struct vc4_vec_encoder* to_vc4_vec_encoder (struct drm_encoder*) ;
 int * vc4_vec_tv_modes ;

__attribute__((used)) static void vc4_vec_encoder_atomic_mode_set(struct drm_encoder *encoder,
     struct drm_crtc_state *crtc_state,
     struct drm_connector_state *conn_state)
{
 struct vc4_vec_encoder *vc4_vec_encoder = to_vc4_vec_encoder(encoder);
 struct vc4_vec *vec = vc4_vec_encoder->vec;

 vec->tv_mode = &vc4_vec_tv_modes[conn_state->tv.mode];
}
