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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct msm_gpu {TYPE_1__* funcs; } ;
struct msm_drm_private {struct platform_device* gpu_pdev; } ;
struct drm_device {int /*<<< orphan*/  render; int /*<<< orphan*/  primary; int /*<<< orphan*/  dev; int /*<<< orphan*/  struct_mutex; struct msm_drm_private* dev_private; } ;
struct adreno_gpu {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* debugfs_init ) (struct msm_gpu*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct adreno_gpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct msm_gpu* FUNC6 (struct platform_device*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 struct adreno_gpu* FUNC13 (struct msm_gpu*) ; 

struct msm_gpu *FUNC14(struct drm_device *dev)
{
	struct msm_drm_private *priv = dev->dev_private;
	struct platform_device *pdev = priv->gpu_pdev;
	struct msm_gpu *gpu = NULL;
	struct adreno_gpu *adreno_gpu;
	int ret;

	if (pdev)
		gpu = FUNC6(pdev);

	if (!gpu) {
		FUNC2(dev->dev, "no GPU device was found\n");
		return NULL;
	}

	adreno_gpu = FUNC13(gpu);

	/*
	 * The number one reason for HW init to fail is if the firmware isn't
	 * loaded yet. Try that first and don't bother continuing on
	 * otherwise
	 */

	ret = FUNC1(adreno_gpu);
	if (ret)
		return NULL;

	/* Make sure pm runtime is active and reset any previous errors */
	FUNC10(&pdev->dev);

	ret = FUNC7(&pdev->dev);
	if (ret < 0) {
		FUNC9(&pdev->dev);
		FUNC0(dev->dev, "Couldn't power up the GPU: %d\n", ret);
		return NULL;
	}

	FUNC4(&dev->struct_mutex);
	ret = FUNC3(gpu);
	FUNC5(&dev->struct_mutex);
	FUNC8(&pdev->dev);
	if (ret) {
		FUNC0(dev->dev, "gpu hw init failed: %d\n", ret);
		return NULL;
	}

#ifdef CONFIG_DEBUG_FS
	if (gpu->funcs->debugfs_init) {
		gpu->funcs->debugfs_init(gpu, dev->primary);
		gpu->funcs->debugfs_init(gpu, dev->render);
	}
#endif

	return gpu;
}