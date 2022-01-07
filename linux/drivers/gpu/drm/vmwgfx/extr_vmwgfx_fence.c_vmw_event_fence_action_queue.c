
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct vmw_fence_obj {int dummy; } ;
struct vmw_fence_manager {TYPE_1__* dev_priv; } ;
struct TYPE_4__ {int type; int cleanup; int seq_passed; } ;
struct vmw_event_fence_action {TYPE_2__ action; int * tv_usec; int * tv_sec; int dev; int fence; struct drm_pending_event* event; } ;
struct drm_pending_event {int dummy; } ;
struct drm_file {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int VMW_ACTION_EVENT ;
 struct vmw_fence_manager* fman_from_fence (struct vmw_fence_obj*) ;
 struct vmw_event_fence_action* kzalloc (int,int ) ;
 scalar_t__ unlikely (int) ;
 int vmw_event_fence_action_cleanup ;
 int vmw_event_fence_action_seq_passed ;
 int vmw_fence_obj_add_action (struct vmw_fence_obj*,TYPE_2__*) ;
 int vmw_fence_obj_reference (struct vmw_fence_obj*) ;

int vmw_event_fence_action_queue(struct drm_file *file_priv,
     struct vmw_fence_obj *fence,
     struct drm_pending_event *event,
     uint32_t *tv_sec,
     uint32_t *tv_usec,
     bool interruptible)
{
 struct vmw_event_fence_action *eaction;
 struct vmw_fence_manager *fman = fman_from_fence(fence);

 eaction = kzalloc(sizeof(*eaction), GFP_KERNEL);
 if (unlikely(!eaction))
  return -ENOMEM;

 eaction->event = event;

 eaction->action.seq_passed = vmw_event_fence_action_seq_passed;
 eaction->action.cleanup = vmw_event_fence_action_cleanup;
 eaction->action.type = VMW_ACTION_EVENT;

 eaction->fence = vmw_fence_obj_reference(fence);
 eaction->dev = fman->dev_priv->dev;
 eaction->tv_sec = tv_sec;
 eaction->tv_usec = tv_usec;

 vmw_fence_obj_add_action(fence, &eaction->action);

 return 0;
}
