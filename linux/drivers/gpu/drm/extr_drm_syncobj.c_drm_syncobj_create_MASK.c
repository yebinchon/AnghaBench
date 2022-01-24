#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct drm_syncobj {int /*<<< orphan*/  lock; int /*<<< orphan*/  cb_list; int /*<<< orphan*/  refcount; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int DRM_SYNCOBJ_CREATE_SIGNALED ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_syncobj*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_syncobj*,struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct drm_syncobj* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct drm_syncobj **out_syncobj, uint32_t flags,
		       struct dma_fence *fence)
{
	struct drm_syncobj *syncobj;

	syncobj = FUNC4(sizeof(struct drm_syncobj), GFP_KERNEL);
	if (!syncobj)
		return -ENOMEM;

	FUNC3(&syncobj->refcount);
	FUNC0(&syncobj->cb_list);
	FUNC5(&syncobj->lock);

	if (flags & DRM_SYNCOBJ_CREATE_SIGNALED)
		FUNC1(syncobj);

	if (fence)
		FUNC2(syncobj, fence);

	*out_syncobj = syncobj;
	return 0;
}