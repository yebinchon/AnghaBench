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
struct etnaviv_gpu {int /*<<< orphan*/  cooling; int /*<<< orphan*/  wq; int /*<<< orphan*/  dev; int /*<<< orphan*/  fence_event; int /*<<< orphan*/  sync_point_work; int /*<<< orphan*/  fence_spinlock; int /*<<< orphan*/  fence_idr; int /*<<< orphan*/  fence_context; struct drm_device* drm; } ;
struct etnaviv_drm_private {int /*<<< orphan*/  num_gpus; struct etnaviv_gpu** gpu; } ;
struct drm_device {struct etnaviv_drm_private* dev_private; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DRM_ETNAVIV_THERMAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cooling_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct etnaviv_gpu* FUNC6 (struct device*) ; 
 scalar_t__ FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (struct etnaviv_gpu*) ; 
 int /*<<< orphan*/  FUNC10 (struct etnaviv_gpu*) ; 
 int FUNC11 (struct etnaviv_gpu*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sync_point_worker ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,struct etnaviv_gpu*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct device *dev, struct device *master,
	void *data)
{
	struct drm_device *drm = data;
	struct etnaviv_drm_private *priv = drm->dev_private;
	struct etnaviv_gpu *gpu = FUNC6(dev);
	int ret;

	if (FUNC1(CONFIG_DRM_ETNAVIV_THERMAL)) {
		gpu->cooling = FUNC19(dev->of_node,
				(char *)FUNC7(dev), gpu, &cooling_ops);
		if (FUNC2(gpu->cooling))
			return FUNC3(gpu->cooling);
	}

	gpu->wq = FUNC4(FUNC7(dev), 0);
	if (!gpu->wq) {
		ret = -ENOMEM;
		goto out_thermal;
	}

	ret = FUNC11(gpu);
	if (ret)
		goto out_workqueue;

#ifdef CONFIG_PM
	ret = pm_runtime_get_sync(gpu->dev);
#else
	ret = FUNC9(gpu);
#endif
	if (ret < 0)
		goto out_sched;


	gpu->drm = drm;
	gpu->fence_context = FUNC8(1);
	FUNC12(&gpu->fence_idr);
	FUNC17(&gpu->fence_spinlock);

	FUNC0(&gpu->sync_point_work, sync_point_worker);
	FUNC13(&gpu->fence_event);

	priv->gpu[priv->num_gpus++] = gpu;

	FUNC15(gpu->dev);
	FUNC16(gpu->dev);

	return 0;

out_sched:
	FUNC10(gpu);

out_workqueue:
	FUNC5(gpu->wq);

out_thermal:
	if (FUNC1(CONFIG_DRM_ETNAVIV_THERMAL))
		FUNC18(gpu->cooling);

	return ret;
}