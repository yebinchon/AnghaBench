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
typedef  scalar_t__ u32 ;
struct msm_gpu_submitqueue {scalar_t__ id; int /*<<< orphan*/  node; scalar_t__ prio; scalar_t__ flags; int /*<<< orphan*/  ref; } ;
struct msm_file_private {int /*<<< orphan*/  queuelock; int /*<<< orphan*/  submitqueues; int /*<<< orphan*/  queueid; } ;
struct msm_drm_private {TYPE_1__* gpu; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct TYPE_2__ {scalar_t__ nr_rings; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct msm_gpu_submitqueue* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct drm_device *drm, struct msm_file_private *ctx,
		u32 prio, u32 flags, u32 *id)
{
	struct msm_drm_private *priv = drm->dev_private;
	struct msm_gpu_submitqueue *queue;

	if (!ctx)
		return -ENODEV;

	queue = FUNC1(sizeof(*queue), GFP_KERNEL);

	if (!queue)
		return -ENOMEM;

	FUNC0(&queue->ref);
	queue->flags = flags;

	if (priv->gpu) {
		if (prio >= priv->gpu->nr_rings)
			return -EINVAL;

		queue->prio = prio;
	}

	FUNC3(&ctx->queuelock);

	queue->id = ctx->queueid++;

	if (id)
		*id = queue->id;

	FUNC2(&queue->node, &ctx->submitqueues);

	FUNC4(&ctx->queuelock);

	return 0;
}