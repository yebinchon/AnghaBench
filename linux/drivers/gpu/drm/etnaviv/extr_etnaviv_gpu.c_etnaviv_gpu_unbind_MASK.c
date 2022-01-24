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
struct etnaviv_gpu {int initialized; int /*<<< orphan*/ * cooling; int /*<<< orphan*/  fence_idr; int /*<<< orphan*/ * drm; int /*<<< orphan*/  buffer; int /*<<< orphan*/  dev; int /*<<< orphan*/  wq; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DRM_ETNAVIV_THERMAL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct etnaviv_gpu* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct etnaviv_gpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct etnaviv_gpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct etnaviv_gpu*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct device *dev, struct device *master,
	void *data)
{
	struct etnaviv_gpu *gpu = FUNC3(dev);

	FUNC0("%s", FUNC4(gpu->dev));

	FUNC9(gpu->wq);
	FUNC2(gpu->wq);

	FUNC8(gpu);

#ifdef CONFIG_PM
	pm_runtime_get_sync(gpu->dev);
	pm_runtime_put_sync_suspend(gpu->dev);
#else
	FUNC6(gpu);
#endif

	if (gpu->initialized) {
		FUNC5(&gpu->buffer);
		FUNC7(gpu);
		gpu->initialized = false;
	}

	gpu->drm = NULL;
	FUNC10(&gpu->fence_idr);

	if (FUNC1(CONFIG_DRM_ETNAVIV_THERMAL))
		FUNC13(gpu->cooling);
	gpu->cooling = NULL;
}