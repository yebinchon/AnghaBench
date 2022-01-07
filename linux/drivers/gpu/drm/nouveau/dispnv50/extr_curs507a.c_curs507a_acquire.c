
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ w; scalar_t__ h; } ;
struct TYPE_8__ {int visible; int crtc; } ;
struct nv50_wndw_atom {TYPE_2__ image; TYPE_4__ state; } ;
struct nv50_wndw {int dummy; } ;
struct TYPE_5__ {int visible; } ;
struct nv50_head_atom {TYPE_1__ curs; int state; } ;
struct nv50_head {TYPE_3__* func; } ;
struct TYPE_7__ {int (* curs_layout ) (struct nv50_head*,struct nv50_wndw_atom*,struct nv50_head_atom*) ;int (* curs_format ) (struct nv50_head*,struct nv50_wndw_atom*,struct nv50_head_atom*) ;} ;


 int DRM_PLANE_HELPER_NO_SCALING ;
 int EINVAL ;
 int drm_atomic_helper_check_plane_state (TYPE_4__*,int *,int ,int ,int,int) ;
 struct nv50_head* nv50_head (int ) ;
 int stub1 (struct nv50_head*,struct nv50_wndw_atom*,struct nv50_head_atom*) ;
 int stub2 (struct nv50_head*,struct nv50_wndw_atom*,struct nv50_head_atom*) ;

__attribute__((used)) static int
curs507a_acquire(struct nv50_wndw *wndw, struct nv50_wndw_atom *asyw,
   struct nv50_head_atom *asyh)
{
 struct nv50_head *head = nv50_head(asyw->state.crtc);
 int ret;

 ret = drm_atomic_helper_check_plane_state(&asyw->state, &asyh->state,
        DRM_PLANE_HELPER_NO_SCALING,
        DRM_PLANE_HELPER_NO_SCALING,
        1, 1);
 asyh->curs.visible = asyw->state.visible;
 if (ret || !asyh->curs.visible)
  return ret;

 if (asyw->image.w != asyw->image.h)
  return -EINVAL;

 ret = head->func->curs_layout(head, asyw, asyh);
 if (ret)
  return ret;

 return head->func->curs_format(head, asyw, asyh);
}
