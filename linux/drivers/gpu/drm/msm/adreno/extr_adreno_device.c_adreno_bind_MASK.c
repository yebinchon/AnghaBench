#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct msm_gpu {int dummy; } ;
struct msm_drm_private {int is_a2xx; } ;
struct drm_device {int /*<<< orphan*/  dev; struct msm_drm_private* dev_private; } ;
struct device {struct adreno_platform_config* platform_data; } ;
struct TYPE_3__ {int core; int /*<<< orphan*/  patchid; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct adreno_platform_config {TYPE_1__ rev; } ;
struct adreno_info {struct msm_gpu* (* init ) (struct drm_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 scalar_t__ FUNC1 (struct msm_gpu*) ; 
 int FUNC2 (struct msm_gpu*) ; 
 struct adreno_info* FUNC3 (TYPE_1__) ; 
 struct drm_device* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,int /*<<< orphan*/ ) ; 
 struct msm_gpu* FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 

__attribute__((used)) static int FUNC11(struct device *dev, struct device *master, void *data)
{
	static struct adreno_platform_config config = {};
	const struct adreno_info *info;
	struct drm_device *drm = FUNC4(master);
	struct msm_drm_private *priv = drm->dev_private;
	struct msm_gpu *gpu;
	int ret;

	ret = FUNC7(dev, &config.rev);
	if (ret)
		return ret;

	dev->platform_data = &config;
	FUNC8(drm, FUNC10(dev));

	info = FUNC3(config.rev);

	if (!info) {
		FUNC6(drm->dev, "Unknown GPU revision: %u.%u.%u.%u\n",
			config.rev.core, config.rev.major,
			config.rev.minor, config.rev.patchid);
		return -ENXIO;
	}

	FUNC0("Found GPU: %u.%u.%u.%u", config.rev.core, config.rev.major,
		config.rev.minor, config.rev.patchid);

	priv->is_a2xx = config.rev.core == 2;

	gpu = info->init(drm);
	if (FUNC1(gpu)) {
		FUNC6(drm->dev, "failed to load adreno gpu\n");
		return FUNC2(gpu);
	}

	FUNC5(dev, gpu);

	return 0;
}