#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ww_acquire_ctx {int dummy; } ;
struct TYPE_7__ {TYPE_2__* s_fence; } ;
struct panfrost_job {int /*<<< orphan*/  bo_count; int /*<<< orphan*/  bos; int /*<<< orphan*/  render_done_fence; TYPE_3__ base; int /*<<< orphan*/  implicit_fences; int /*<<< orphan*/  refcount; TYPE_1__* file_priv; struct panfrost_device* pfdev; } ;
struct panfrost_device {int /*<<< orphan*/  sched_lock; } ;
struct drm_sched_entity {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  finished; } ;
struct TYPE_5__ {struct drm_sched_entity* sched_entity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ww_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ww_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,struct drm_sched_entity*) ; 
 int FUNC4 (TYPE_3__*,struct drm_sched_entity*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct panfrost_job*) ; 

int FUNC11(struct panfrost_job *job)
{
	struct panfrost_device *pfdev = job->pfdev;
	int slot = FUNC10(job);
	struct drm_sched_entity *entity = &job->file_priv->sched_entity[slot];
	struct ww_acquire_ctx acquire_ctx;
	int ret = 0;

	FUNC6(&pfdev->sched_lock);

	ret = FUNC1(job->bos, job->bo_count,
					    &acquire_ctx);
	if (ret) {
		FUNC7(&pfdev->sched_lock);
		return ret;
	}

	ret = FUNC4(&job->base, entity, NULL);
	if (ret) {
		FUNC7(&pfdev->sched_lock);
		goto unlock;
	}

	job->render_done_fence = FUNC0(&job->base.s_fence->finished);

	FUNC5(&job->refcount); /* put by scheduler job completion */

	FUNC8(job->bos, job->bo_count,
				       job->implicit_fences);

	FUNC3(&job->base, entity);

	FUNC7(&pfdev->sched_lock);

	FUNC9(job->bos, job->bo_count,
				      job->render_done_fence);

unlock:
	FUNC2(job->bos, job->bo_count, &acquire_ctx);

	return ret;
}