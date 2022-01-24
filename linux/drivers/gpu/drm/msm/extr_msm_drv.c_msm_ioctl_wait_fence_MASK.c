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
struct msm_gpu_submitqueue {size_t prio; } ;
struct msm_gpu {TYPE_1__** rb; } ;
struct msm_drm_private {struct msm_gpu* gpu; } ;
struct drm_msm_wait_fence {int /*<<< orphan*/  fence; int /*<<< orphan*/  queueid; scalar_t__ pad; int /*<<< orphan*/  timeout; } ;
struct drm_file {int /*<<< orphan*/  driver_priv; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {int /*<<< orphan*/  fctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int EINVAL ; 
 int ENOENT ; 
 struct msm_gpu_submitqueue* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gpu_submitqueue*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct drm_device *dev, void *data,
		struct drm_file *file)
{
	struct msm_drm_private *priv = dev->dev_private;
	struct drm_msm_wait_fence *args = data;
	ktime_t timeout = FUNC4(args->timeout);
	struct msm_gpu_submitqueue *queue;
	struct msm_gpu *gpu = priv->gpu;
	int ret;

	if (args->pad) {
		FUNC0("invalid pad: %08x\n", args->pad);
		return -EINVAL;
	}

	if (!gpu)
		return 0;

	queue = FUNC1(file->driver_priv, args->queueid);
	if (!queue)
		return -ENOENT;

	ret = FUNC3(gpu->rb[queue->prio]->fctx, args->fence, &timeout,
		true);

	FUNC2(queue);
	return ret;
}