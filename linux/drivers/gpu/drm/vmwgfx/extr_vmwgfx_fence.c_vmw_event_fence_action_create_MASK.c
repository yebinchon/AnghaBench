#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct vmw_fence_obj {int dummy; } ;
struct vmw_fence_manager {TYPE_1__* dev_priv; } ;
struct TYPE_6__ {int length; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; TYPE_3__ base; int /*<<< orphan*/  user_data; } ;
struct vmw_event_fence_pending {int /*<<< orphan*/  base; TYPE_2__ event; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_VMW_EVENT_FENCE_SIGNALED ; 
 int DRM_VMW_FE_FLAG_REQ_TIME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 struct vmw_fence_manager* FUNC3 (struct vmw_fence_obj*) ; 
 int /*<<< orphan*/  FUNC4 (struct vmw_event_fence_pending*) ; 
 struct vmw_event_fence_pending* FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (struct drm_file*,struct vmw_fence_obj*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(struct drm_file *file_priv,
				  struct vmw_fence_obj *fence,
				  uint32_t flags,
				  uint64_t user_data,
				  bool interruptible)
{
	struct vmw_event_fence_pending *event;
	struct vmw_fence_manager *fman = FUNC3(fence);
	struct drm_device *dev = fman->dev_priv->dev;
	int ret;

	event = FUNC5(sizeof(*event), GFP_KERNEL);
	if (FUNC6(!event)) {
		FUNC0("Failed to allocate an event.\n");
		ret = -ENOMEM;
		goto out_no_space;
	}

	event->event.base.type = DRM_VMW_EVENT_FENCE_SIGNALED;
	event->event.base.length = sizeof(*event);
	event->event.user_data = user_data;

	ret = FUNC2(dev, file_priv, &event->base, &event->event.base);

	if (FUNC6(ret != 0)) {
		FUNC0("Failed to allocate event space for this file.\n");
		FUNC4(event);
		goto out_no_space;
	}

	if (flags & DRM_VMW_FE_FLAG_REQ_TIME)
		ret = FUNC7(file_priv, fence,
						   &event->base,
						   &event->event.tv_sec,
						   &event->event.tv_usec,
						   interruptible);
	else
		ret = FUNC7(file_priv, fence,
						   &event->base,
						   NULL,
						   NULL,
						   interruptible);
	if (ret != 0)
		goto out_no_queue;

	return 0;

out_no_queue:
	FUNC1(dev, &event->base);
out_no_space:
	return ret;
}