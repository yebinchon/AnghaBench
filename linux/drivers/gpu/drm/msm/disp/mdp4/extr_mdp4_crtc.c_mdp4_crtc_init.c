
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int lock; } ;
struct TYPE_5__ {int irq; int irqmask; } ;
struct TYPE_4__ {int irq; int irqmask; } ;
struct drm_crtc {int dummy; } ;
struct mdp4_crtc {int id; int ovlp; int dma; int unref_cursor_work; TYPE_3__ cursor; int name; TYPE_2__ err; TYPE_1__ vblank; struct drm_crtc base; } ;
struct drm_plane {int dummy; } ;
struct drm_device {int dummy; } ;
typedef enum mdp4_dma { ____Placeholder_mdp4_dma } mdp4_dma ;


 int ENOMEM ;
 struct drm_crtc* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int dma2err (int) ;
 int dma2irq (int) ;
 char** dma_names ;
 int drm_crtc_helper_add (struct drm_crtc*,int *) ;
 int drm_crtc_init_with_planes (struct drm_device*,struct drm_crtc*,struct drm_plane*,int *,int *,int *) ;
 int drm_flip_work_init (int *,char*,int ) ;
 struct mdp4_crtc* kzalloc (int,int ) ;
 int mdp4_crtc_err_irq ;
 int mdp4_crtc_funcs ;
 int mdp4_crtc_helper_funcs ;
 int mdp4_crtc_vblank_irq ;
 int snprintf (int ,int,char*,char*,int) ;
 int spin_lock_init (int *) ;
 int unref_cursor_worker ;

struct drm_crtc *mdp4_crtc_init(struct drm_device *dev,
  struct drm_plane *plane, int id, int ovlp_id,
  enum mdp4_dma dma_id)
{
 struct drm_crtc *crtc = ((void*)0);
 struct mdp4_crtc *mdp4_crtc;

 mdp4_crtc = kzalloc(sizeof(*mdp4_crtc), GFP_KERNEL);
 if (!mdp4_crtc)
  return ERR_PTR(-ENOMEM);

 crtc = &mdp4_crtc->base;

 mdp4_crtc->id = id;

 mdp4_crtc->ovlp = ovlp_id;
 mdp4_crtc->dma = dma_id;

 mdp4_crtc->vblank.irqmask = dma2irq(mdp4_crtc->dma);
 mdp4_crtc->vblank.irq = mdp4_crtc_vblank_irq;

 mdp4_crtc->err.irqmask = dma2err(mdp4_crtc->dma);
 mdp4_crtc->err.irq = mdp4_crtc_err_irq;

 snprintf(mdp4_crtc->name, sizeof(mdp4_crtc->name), "%s:%d",
   dma_names[dma_id], ovlp_id);

 spin_lock_init(&mdp4_crtc->cursor.lock);

 drm_flip_work_init(&mdp4_crtc->unref_cursor_work,
   "unref cursor", unref_cursor_worker);

 drm_crtc_init_with_planes(dev, crtc, plane, ((void*)0), &mdp4_crtc_funcs,
      ((void*)0));
 drm_crtc_helper_add(crtc, &mdp4_crtc_helper_funcs);

 return crtc;
}
