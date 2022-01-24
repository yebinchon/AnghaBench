#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct adreno_platform_config* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct msm_gpu_config {char* ioname; int va_start; int va_end; int nr_rings; int /*<<< orphan*/  member_0; } ;
struct msm_gpu {int dummy; } ;
struct drm_device {int dummy; } ;
struct adreno_platform_config {int /*<<< orphan*/  rev; } ;
struct adreno_gpu_funcs {int /*<<< orphan*/  base; } ;
struct adreno_gpu {TYPE_4__* info; struct msm_gpu base; int /*<<< orphan*/  rev; int /*<<< orphan*/  revn; int /*<<< orphan*/  gmem; struct adreno_gpu_funcs const* funcs; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; int /*<<< orphan*/  inactive_period; int /*<<< orphan*/  revn; int /*<<< orphan*/  gmem; } ;

/* Variables and functions */
 int SZ_16M ; 
 int SZ_64K ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct msm_gpu*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct adreno_gpu*) ; 
 int FUNC3 (struct drm_device*,struct platform_device*,struct msm_gpu*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct msm_gpu_config*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

int FUNC7(struct drm_device *drm, struct platform_device *pdev,
		struct adreno_gpu *adreno_gpu,
		const struct adreno_gpu_funcs *funcs, int nr_rings)
{
	struct adreno_platform_config *config = pdev->dev.platform_data;
	struct msm_gpu_config adreno_gpu_config  = { 0 };
	struct msm_gpu *gpu = &adreno_gpu->base;

	adreno_gpu->funcs = funcs;
	adreno_gpu->info = FUNC1(config->rev);
	adreno_gpu->gmem = adreno_gpu->info->gmem;
	adreno_gpu->revn = adreno_gpu->info->revn;
	adreno_gpu->rev = config->rev;

	adreno_gpu_config.ioname = "kgsl_3d0_reg_memory";

	adreno_gpu_config.va_start = SZ_16M;
	adreno_gpu_config.va_end = 0xffffffff;
	/* maximum range of a2xx mmu */
	if (FUNC2(adreno_gpu))
		adreno_gpu_config.va_end = SZ_16M + 0xfff * SZ_64K;

	adreno_gpu_config.nr_rings = nr_rings;

	FUNC0(&pdev->dev, gpu);

	FUNC5(&pdev->dev,
		adreno_gpu->info->inactive_period);
	FUNC6(&pdev->dev);
	FUNC4(&pdev->dev);

	return FUNC3(drm, pdev, &adreno_gpu->base, &funcs->base,
			adreno_gpu->info->name, &adreno_gpu_config);
}