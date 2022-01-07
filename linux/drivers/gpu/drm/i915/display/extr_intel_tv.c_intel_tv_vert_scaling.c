
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_display_mode {int crtc_vdisplay; } ;
struct TYPE_3__ {int top; int bottom; } ;
struct TYPE_4__ {TYPE_1__ margins; } ;
struct drm_connector_state {TYPE_2__ tv; } ;



__attribute__((used)) static bool intel_tv_vert_scaling(const struct drm_display_mode *tv_mode,
      const struct drm_connector_state *conn_state,
      int vdisplay)
{
 return tv_mode->crtc_vdisplay -
  conn_state->tv.margins.top -
  conn_state->tv.margins.bottom !=
  vdisplay;
}
