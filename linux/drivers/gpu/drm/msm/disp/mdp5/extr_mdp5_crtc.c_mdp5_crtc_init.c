
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int irq; } ;
struct TYPE_7__ {int irq; } ;
struct TYPE_6__ {int irq; } ;
struct TYPE_5__ {int lock; } ;
struct drm_crtc {int dummy; } ;
struct mdp5_crtc {int id; int lm_cursor_enabled; int unref_cursor_work; TYPE_4__ pp_done; TYPE_3__ err; TYPE_2__ vblank; int pp_completion; TYPE_1__ cursor; int lm_lock; struct drm_crtc base; } ;
struct drm_plane {int dummy; } ;
struct drm_device {int dummy; } ;


 int ENOMEM ;
 struct drm_crtc* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int drm_crtc_helper_add (struct drm_crtc*,int *) ;
 int drm_crtc_init_with_planes (struct drm_device*,struct drm_crtc*,struct drm_plane*,struct drm_plane*,int *,int *) ;
 int drm_flip_work_init (int *,char*,int ) ;
 int init_completion (int *) ;
 struct mdp5_crtc* kzalloc (int,int ) ;
 int mdp5_crtc_err_irq ;
 int mdp5_crtc_funcs ;
 int mdp5_crtc_helper_funcs ;
 int mdp5_crtc_pp_done_irq ;
 int mdp5_crtc_vblank_irq ;
 int spin_lock_init (int *) ;
 int unref_cursor_worker ;

struct drm_crtc *mdp5_crtc_init(struct drm_device *dev,
    struct drm_plane *plane,
    struct drm_plane *cursor_plane, int id)
{
 struct drm_crtc *crtc = ((void*)0);
 struct mdp5_crtc *mdp5_crtc;

 mdp5_crtc = kzalloc(sizeof(*mdp5_crtc), GFP_KERNEL);
 if (!mdp5_crtc)
  return ERR_PTR(-ENOMEM);

 crtc = &mdp5_crtc->base;

 mdp5_crtc->id = id;

 spin_lock_init(&mdp5_crtc->lm_lock);
 spin_lock_init(&mdp5_crtc->cursor.lock);
 init_completion(&mdp5_crtc->pp_completion);

 mdp5_crtc->vblank.irq = mdp5_crtc_vblank_irq;
 mdp5_crtc->err.irq = mdp5_crtc_err_irq;
 mdp5_crtc->pp_done.irq = mdp5_crtc_pp_done_irq;

 mdp5_crtc->lm_cursor_enabled = cursor_plane ? 0 : 1;

 drm_crtc_init_with_planes(dev, crtc, plane, cursor_plane,
      &mdp5_crtc_funcs, ((void*)0));

 drm_flip_work_init(&mdp5_crtc->unref_cursor_work,
   "unref cursor", unref_cursor_worker);

 drm_crtc_helper_add(crtc, &mdp5_crtc_helper_funcs);

 return crtc;
}
