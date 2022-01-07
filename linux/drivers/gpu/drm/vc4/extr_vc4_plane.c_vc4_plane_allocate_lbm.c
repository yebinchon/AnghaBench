
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {scalar_t__ size; int start; int allocated; } ;
struct vc4_plane_state {size_t lbm_offset; TYPE_3__ lbm; int * dlist; } ;
struct vc4_dev {TYPE_2__* hvs; } ;
struct drm_plane_state {TYPE_1__* plane; } ;
struct TYPE_5__ {int mm_lock; int lbm_mm; } ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int WARN_ON_ONCE (int) ;
 int drm_mm_insert_node_generic (int *,TYPE_3__*,scalar_t__,int,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vc4_dev* to_vc4_dev (int ) ;
 struct vc4_plane_state* to_vc4_plane_state (struct drm_plane_state*) ;
 scalar_t__ vc4_lbm_size (struct drm_plane_state*) ;

__attribute__((used)) static int vc4_plane_allocate_lbm(struct drm_plane_state *state)
{
 struct vc4_dev *vc4 = to_vc4_dev(state->plane->dev);
 struct vc4_plane_state *vc4_state = to_vc4_plane_state(state);
 unsigned long irqflags;
 u32 lbm_size;

 lbm_size = vc4_lbm_size(state);
 if (!lbm_size)
  return 0;

 if (WARN_ON(!vc4_state->lbm_offset))
  return -EINVAL;




 if (!vc4_state->lbm.allocated) {
  int ret;

  spin_lock_irqsave(&vc4->hvs->mm_lock, irqflags);
  ret = drm_mm_insert_node_generic(&vc4->hvs->lbm_mm,
       &vc4_state->lbm,
       lbm_size, 32, 0, 0);
  spin_unlock_irqrestore(&vc4->hvs->mm_lock, irqflags);

  if (ret)
   return ret;
 } else {
  WARN_ON_ONCE(lbm_size != vc4_state->lbm.size);
 }

 vc4_state->dlist[vc4_state->lbm_offset] = vc4_state->lbm.start;

 return 0;
}
