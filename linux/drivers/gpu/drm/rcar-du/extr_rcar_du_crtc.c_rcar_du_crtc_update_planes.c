
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_7__ {struct drm_plane_state* state; } ;
struct rcar_du_plane {TYPE_1__ plane; } ;
struct rcar_du_device {TYPE_2__* info; } ;
struct rcar_du_crtc {int index; TYPE_4__* group; int crtc; struct rcar_du_device* dev; } ;
struct drm_plane_state {int visible; int * crtc; } ;
struct TYPE_11__ {int planes; } ;
struct TYPE_10__ {unsigned int num_planes; unsigned int dptsr_planes; int lock; scalar_t__ need_restart; scalar_t__ used_crtcs; struct rcar_du_plane* planes; } ;
struct TYPE_9__ {unsigned int hwindex; } ;
struct TYPE_8__ {int gen; } ;


 int DPTSR ;
 int DS1PR ;
 int DS2PR ;
 int RCAR_DU_FEATURE_VSP1_SOURCE ;
 int RCAR_DU_NUM_HW_PLANES ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_6__* plane_format (struct rcar_du_plane*) ;
 scalar_t__ plane_zpos (struct rcar_du_plane*) ;
 int rcar_du_group_restart (TYPE_4__*) ;
 int rcar_du_group_write (TYPE_4__*,int ,unsigned int) ;
 scalar_t__ rcar_du_has (struct rcar_du_device*,int ) ;
 TYPE_3__* to_rcar_plane_state (struct drm_plane_state*) ;

__attribute__((used)) static void rcar_du_crtc_update_planes(struct rcar_du_crtc *rcrtc)
{
 struct rcar_du_plane *planes[RCAR_DU_NUM_HW_PLANES];
 struct rcar_du_device *rcdu = rcrtc->dev;
 unsigned int num_planes = 0;
 unsigned int dptsr_planes;
 unsigned int hwplanes = 0;
 unsigned int prio = 0;
 unsigned int i;
 u32 dspr = 0;

 for (i = 0; i < rcrtc->group->num_planes; ++i) {
  struct rcar_du_plane *plane = &rcrtc->group->planes[i];
  unsigned int j;

  if (plane->plane.state->crtc != &rcrtc->crtc ||
      !plane->plane.state->visible)
   continue;


  for (j = num_planes++; j > 0; --j) {
   if (plane_zpos(planes[j-1]) <= plane_zpos(plane))
    break;
   planes[j] = planes[j-1];
  }

  planes[j] = plane;
  prio += plane_format(plane)->planes * 4;
 }

 for (i = 0; i < num_planes; ++i) {
  struct rcar_du_plane *plane = planes[i];
  struct drm_plane_state *state = plane->plane.state;
  unsigned int index = to_rcar_plane_state(state)->hwindex;

  prio -= 4;
  dspr |= (index + 1) << prio;
  hwplanes |= 1 << index;

  if (plane_format(plane)->planes == 2) {
   index = (index + 1) % 8;

   prio -= 4;
   dspr |= (index + 1) << prio;
   hwplanes |= 1 << index;
  }
 }


 if (rcar_du_has(rcdu, RCAR_DU_FEATURE_VSP1_SOURCE)) {
  if (rcdu->info->gen < 3) {
   dspr = (rcrtc->index % 2) + 1;
   hwplanes = 1 << (rcrtc->index % 2);
  } else {
   dspr = (rcrtc->index % 2) ? 3 : 1;
   hwplanes = 1 << ((rcrtc->index % 2) ? 2 : 0);
  }
 }
 mutex_lock(&rcrtc->group->lock);

 dptsr_planes = rcrtc->index % 2 ? rcrtc->group->dptsr_planes | hwplanes
       : rcrtc->group->dptsr_planes & ~hwplanes;

 if (dptsr_planes != rcrtc->group->dptsr_planes) {
  rcar_du_group_write(rcrtc->group, DPTSR,
        (dptsr_planes << 16) | dptsr_planes);
  rcrtc->group->dptsr_planes = dptsr_planes;

  if (rcrtc->group->used_crtcs)
   rcar_du_group_restart(rcrtc->group);
 }


 if (rcrtc->group->need_restart)
  rcar_du_group_restart(rcrtc->group);

 mutex_unlock(&rcrtc->group->lock);

 rcar_du_group_write(rcrtc->group, rcrtc->index % 2 ? DS2PR : DS1PR,
       dspr);
}
