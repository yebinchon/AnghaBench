
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msm_drm_private {int kms; } ;
struct drm_plane {int dummy; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct TYPE_3__ {int id; } ;
struct drm_crtc {TYPE_1__ base; struct drm_device* dev; } ;
struct dpu_kms {int dummy; } ;
struct dpu_crtc {int name; int event_lock; TYPE_2__* frame_events; int frame_event_list; int frame_done_comp; int frame_pending; int spin_lock; struct drm_crtc base; } ;
struct TYPE_4__ {int work; int list; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int DPU_CRTC_NAME_SIZE ;
 int DPU_DEBUG (char*,int ) ;
 int ENOMEM ;
 struct drm_crtc* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int dpu_crtc_frame_event_work ;
 int dpu_crtc_funcs ;
 int dpu_crtc_helper_funcs ;
 int drm_crtc_helper_add (struct drm_crtc*,int *) ;
 int drm_crtc_init_with_planes (struct drm_device*,struct drm_crtc*,struct drm_plane*,struct drm_plane*,int *,int *) ;
 int init_completion (int *) ;
 int kthread_init_work (int *,int ) ;
 struct dpu_crtc* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int snprintf (int ,int ,char*,int) ;
 int spin_lock_init (int *) ;
 struct dpu_kms* to_dpu_kms (int ) ;

struct drm_crtc *dpu_crtc_init(struct drm_device *dev, struct drm_plane *plane,
    struct drm_plane *cursor)
{
 struct drm_crtc *crtc = ((void*)0);
 struct dpu_crtc *dpu_crtc = ((void*)0);
 struct msm_drm_private *priv = ((void*)0);
 struct dpu_kms *kms = ((void*)0);
 int i;

 priv = dev->dev_private;
 kms = to_dpu_kms(priv->kms);

 dpu_crtc = kzalloc(sizeof(*dpu_crtc), GFP_KERNEL);
 if (!dpu_crtc)
  return ERR_PTR(-ENOMEM);

 crtc = &dpu_crtc->base;
 crtc->dev = dev;

 spin_lock_init(&dpu_crtc->spin_lock);
 atomic_set(&dpu_crtc->frame_pending, 0);

 init_completion(&dpu_crtc->frame_done_comp);

 INIT_LIST_HEAD(&dpu_crtc->frame_event_list);

 for (i = 0; i < ARRAY_SIZE(dpu_crtc->frame_events); i++) {
  INIT_LIST_HEAD(&dpu_crtc->frame_events[i].list);
  list_add(&dpu_crtc->frame_events[i].list,
    &dpu_crtc->frame_event_list);
  kthread_init_work(&dpu_crtc->frame_events[i].work,
    dpu_crtc_frame_event_work);
 }

 drm_crtc_init_with_planes(dev, crtc, plane, cursor, &dpu_crtc_funcs,
    ((void*)0));

 drm_crtc_helper_add(crtc, &dpu_crtc_helper_funcs);


 snprintf(dpu_crtc->name, DPU_CRTC_NAME_SIZE, "crtc%u", crtc->base.id);


 spin_lock_init(&dpu_crtc->event_lock);

 DPU_DEBUG("%s: successfully initialized crtc\n", dpu_crtc->name);
 return crtc;
}
