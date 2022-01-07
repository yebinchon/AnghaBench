
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc4_vec_tv_mode {int mode; } ;
struct drm_encoder {int dummy; } ;
struct drm_crtc_state {int adjusted_mode; } ;
struct TYPE_2__ {size_t mode; } ;
struct drm_connector_state {scalar_t__ crtc; TYPE_1__ tv; } ;


 int EINVAL ;
 int drm_mode_equal (int ,int *) ;
 struct vc4_vec_tv_mode* vc4_vec_tv_modes ;

__attribute__((used)) static int vc4_vec_encoder_atomic_check(struct drm_encoder *encoder,
     struct drm_crtc_state *crtc_state,
     struct drm_connector_state *conn_state)
{
 const struct vc4_vec_tv_mode *vec_mode;

 vec_mode = &vc4_vec_tv_modes[conn_state->tv.mode];

 if (conn_state->crtc &&
     !drm_mode_equal(vec_mode->mode, &crtc_state->adjusted_mode))
  return -EINVAL;

 return 0;
}
