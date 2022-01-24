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
struct msm_file_private {int /*<<< orphan*/  queuelock; int /*<<< orphan*/  submitqueues; } ;
struct msm_drm_private {TYPE_1__* gpu; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct TYPE_2__ {scalar_t__ nr_rings; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct drm_device*,struct msm_file_private*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uint32_t ; 

int FUNC4(struct drm_device *drm, struct msm_file_private *ctx)
{
	struct msm_drm_private *priv = drm->dev_private;
	int default_prio;

	if (!ctx)
		return 0;

	/*
	 * Select priority 2 as the "default priority" unless nr_rings is less
	 * than 2 and then pick the lowest pirority
	 */
	default_prio = priv->gpu ?
		FUNC1(uint32_t, 2, 0, priv->gpu->nr_rings - 1) : 0;

	FUNC0(&ctx->submitqueues);

	FUNC3(&ctx->queuelock);

	return FUNC2(drm, ctx, default_prio, 0, NULL);
}