
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct vmw_fence_obj {int dummy; } ;
struct vmw_fence_manager {TYPE_1__* dev_priv; } ;
struct TYPE_6__ {int length; int type; } ;
struct TYPE_5__ {int tv_usec; int tv_sec; TYPE_3__ base; int user_data; } ;
struct vmw_event_fence_pending {int base; TYPE_2__ event; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {struct drm_device* dev; } ;


 int DRM_ERROR (char*) ;
 int DRM_VMW_EVENT_FENCE_SIGNALED ;
 int DRM_VMW_FE_FLAG_REQ_TIME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_event_cancel_free (struct drm_device*,int *) ;
 int drm_event_reserve_init (struct drm_device*,struct drm_file*,int *,TYPE_3__*) ;
 struct vmw_fence_manager* fman_from_fence (struct vmw_fence_obj*) ;
 int kfree (struct vmw_event_fence_pending*) ;
 struct vmw_event_fence_pending* kzalloc (int,int ) ;
 scalar_t__ unlikely (int) ;
 int vmw_event_fence_action_queue (struct drm_file*,struct vmw_fence_obj*,int *,int *,int *,int) ;

__attribute__((used)) static int vmw_event_fence_action_create(struct drm_file *file_priv,
      struct vmw_fence_obj *fence,
      uint32_t flags,
      uint64_t user_data,
      bool interruptible)
{
 struct vmw_event_fence_pending *event;
 struct vmw_fence_manager *fman = fman_from_fence(fence);
 struct drm_device *dev = fman->dev_priv->dev;
 int ret;

 event = kzalloc(sizeof(*event), GFP_KERNEL);
 if (unlikely(!event)) {
  DRM_ERROR("Failed to allocate an event.\n");
  ret = -ENOMEM;
  goto out_no_space;
 }

 event->event.base.type = DRM_VMW_EVENT_FENCE_SIGNALED;
 event->event.base.length = sizeof(*event);
 event->event.user_data = user_data;

 ret = drm_event_reserve_init(dev, file_priv, &event->base, &event->event.base);

 if (unlikely(ret != 0)) {
  DRM_ERROR("Failed to allocate event space for this file.\n");
  kfree(event);
  goto out_no_space;
 }

 if (flags & DRM_VMW_FE_FLAG_REQ_TIME)
  ret = vmw_event_fence_action_queue(file_priv, fence,
         &event->base,
         &event->event.tv_sec,
         &event->event.tv_usec,
         interruptible);
 else
  ret = vmw_event_fence_action_queue(file_priv, fence,
         &event->base,
         ((void*)0),
         ((void*)0),
         interruptible);
 if (ret != 0)
  goto out_no_queue;

 return 0;

out_no_queue:
 drm_event_cancel_free(dev, &event->base);
out_no_space:
 return ret;
}
