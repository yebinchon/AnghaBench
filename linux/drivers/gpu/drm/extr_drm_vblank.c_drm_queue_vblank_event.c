
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {void* sequence; } ;
struct TYPE_8__ {int signal; } ;
union drm_wait_vblank {TYPE_5__ reply; TYPE_1__ request; } ;
typedef void* u64 ;
struct drm_vblank_crtc {int enabled; } ;
struct TYPE_13__ {int link; } ;
struct TYPE_14__ {int length; int type; } ;
struct TYPE_9__ {scalar_t__ crtc_id; int user_data; } ;
struct TYPE_11__ {TYPE_7__ base; TYPE_2__ vbl; } ;
struct drm_pending_vblank_event {unsigned int pipe; TYPE_6__ base; void* sequence; TYPE_4__ event; } ;
struct drm_file {int dummy; } ;
struct drm_device {int event_lock; int vblank_event_list; struct drm_vblank_crtc* vblank; } ;
struct TYPE_10__ {scalar_t__ id; } ;
struct drm_crtc {TYPE_3__ base; } ;
typedef int ktime_t ;


 int DRIVER_MODESET ;
 int DRM_DEBUG (char*,void*,void*,unsigned int) ;
 int DRM_EVENT_VBLANK ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int READ_ONCE (int ) ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 struct drm_crtc* drm_crtc_from_index (struct drm_device*,unsigned int) ;
 int drm_event_reserve_init_locked (struct drm_device*,struct drm_file*,TYPE_6__*,TYPE_7__*) ;
 void* drm_vblank_count_and_time (struct drm_device*,unsigned int,int *) ;
 int drm_vblank_put (struct drm_device*,unsigned int) ;
 int kfree (struct drm_pending_vblank_event*) ;
 struct drm_pending_vblank_event* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int send_vblank_event (struct drm_device*,struct drm_pending_vblank_event*,void*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_drm_vblank_event_queued (struct drm_file*,unsigned int,void*) ;
 scalar_t__ vblank_passed (void*,void*) ;

__attribute__((used)) static int drm_queue_vblank_event(struct drm_device *dev, unsigned int pipe,
      u64 req_seq,
      union drm_wait_vblank *vblwait,
      struct drm_file *file_priv)
{
 struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
 struct drm_pending_vblank_event *e;
 ktime_t now;
 unsigned long flags;
 u64 seq;
 int ret;

 e = kzalloc(sizeof(*e), GFP_KERNEL);
 if (e == ((void*)0)) {
  ret = -ENOMEM;
  goto err_put;
 }

 e->pipe = pipe;
 e->event.base.type = DRM_EVENT_VBLANK;
 e->event.base.length = sizeof(e->event.vbl);
 e->event.vbl.user_data = vblwait->request.signal;
 e->event.vbl.crtc_id = 0;
 if (drm_core_check_feature(dev, DRIVER_MODESET)) {
  struct drm_crtc *crtc = drm_crtc_from_index(dev, pipe);
  if (crtc)
   e->event.vbl.crtc_id = crtc->base.id;
 }

 spin_lock_irqsave(&dev->event_lock, flags);







 if (!READ_ONCE(vblank->enabled)) {
  ret = -EINVAL;
  goto err_unlock;
 }

 ret = drm_event_reserve_init_locked(dev, file_priv, &e->base,
         &e->event.base);

 if (ret)
  goto err_unlock;

 seq = drm_vblank_count_and_time(dev, pipe, &now);

 DRM_DEBUG("event on vblank count %llu, current %llu, crtc %u\n",
    req_seq, seq, pipe);

 trace_drm_vblank_event_queued(file_priv, pipe, req_seq);

 e->sequence = req_seq;
 if (vblank_passed(seq, req_seq)) {
  drm_vblank_put(dev, pipe);
  send_vblank_event(dev, e, seq, now);
  vblwait->reply.sequence = seq;
 } else {

  list_add_tail(&e->base.link, &dev->vblank_event_list);
  vblwait->reply.sequence = req_seq;
 }

 spin_unlock_irqrestore(&dev->event_lock, flags);

 return 0;

err_unlock:
 spin_unlock_irqrestore(&dev->event_lock, flags);
 kfree(e);
err_put:
 drm_vblank_put(dev, pipe);
 return ret;
}
