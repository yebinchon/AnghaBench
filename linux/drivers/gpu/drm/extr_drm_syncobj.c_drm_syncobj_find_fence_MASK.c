#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait ;
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ next; } ;
struct syncobj_wait_entry {TYPE_1__ node; struct dma_fence* fence; scalar_t__ point; int /*<<< orphan*/  task; } ;
struct drm_syncobj {int dummy; } ;
struct drm_file {int dummy; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 scalar_t__ DRM_SYNCOBJ_WAIT_FLAGS_WAIT_FOR_SUBMIT ; 
 int /*<<< orphan*/  DRM_SYNCOBJ_WAIT_FOR_SUBMIT_TIMEOUT ; 
 int EINVAL ; 
 int ENOENT ; 
 int ERESTARTSYS ; 
 int ETIME ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int FUNC1 (struct dma_fence**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_syncobj*,struct syncobj_wait_entry*) ; 
 struct dma_fence* FUNC4 (struct drm_syncobj*) ; 
 struct drm_syncobj* FUNC5 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_syncobj*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_syncobj*,struct syncobj_wait_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct syncobj_wait_entry*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

int FUNC13(struct drm_file *file_private,
			   u32 handle, u64 point, u64 flags,
			   struct dma_fence **fence)
{
	struct drm_syncobj *syncobj = FUNC5(file_private, handle);
	struct syncobj_wait_entry wait;
	u64 timeout = FUNC9(DRM_SYNCOBJ_WAIT_FOR_SUBMIT_TIMEOUT);
	int ret;

	if (!syncobj)
		return -ENOENT;

	*fence = FUNC4(syncobj);
	FUNC6(syncobj);

	if (*fence) {
		ret = FUNC1(fence, point);
		if (!ret)
			return 0;
		FUNC2(*fence);
	} else {
		ret = -EINVAL;
	}

	if (!(flags & DRM_SYNCOBJ_WAIT_FLAGS_WAIT_FOR_SUBMIT))
		return ret;

	FUNC8(&wait, 0, sizeof(wait));
	wait.task = current;
	wait.point = point;
	FUNC3(syncobj, &wait);

	do {
		FUNC11(TASK_INTERRUPTIBLE);
		if (wait.fence) {
			ret = 0;
			break;
		}
                if (timeout == 0) {
                        ret = -ETIME;
                        break;
                }

		if (FUNC12(current)) {
			ret = -ERESTARTSYS;
			break;
		}

                timeout = FUNC10(timeout);
	} while (1);

	FUNC0(TASK_RUNNING);
	*fence = wait.fence;

	if (wait.node.next)
		FUNC7(syncobj, &wait);

	return ret;
}