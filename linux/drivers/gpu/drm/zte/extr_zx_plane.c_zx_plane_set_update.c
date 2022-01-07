
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zx_plane {int dummy; } ;
struct drm_plane {int type; TYPE_1__* state; } ;
struct TYPE_2__ {int crtc; } ;




 int WARN_ONCE (int,char*,int) ;
 struct zx_plane* to_zx_plane (struct drm_plane*) ;
 int zx_gl_rsz_set_update (struct zx_plane*) ;
 int zx_gl_set_update (struct zx_plane*) ;
 int zx_vl_rsz_set_update (struct zx_plane*) ;
 int zx_vl_set_update (struct zx_plane*) ;

void zx_plane_set_update(struct drm_plane *plane)
{
 struct zx_plane *zplane = to_zx_plane(plane);


 if (!plane->state->crtc)
  return;

 switch (plane->type) {
 case 128:
  zx_gl_rsz_set_update(zplane);
  zx_gl_set_update(zplane);
  break;
 case 129:
  zx_vl_rsz_set_update(zplane);
  zx_vl_set_update(zplane);
  break;
 default:
  WARN_ONCE(1, "unsupported plane type %d\n", plane->type);
 }
}
