#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct panfrost_perfcnt {struct drm_gem_shmem_object* buf; TYPE_2__* bo; struct panfrost_file_priv* user; int /*<<< orphan*/  dump_comp; int /*<<< orphan*/  bosize; } ;
struct panfrost_file_priv {int dummy; } ;
struct panfrost_device {struct panfrost_perfcnt* perfcnt; int /*<<< orphan*/  ddev; int /*<<< orphan*/  dev; } ;
struct drm_gem_shmem_object {int /*<<< orphan*/  base; } ;
struct TYPE_4__ {int /*<<< orphan*/  base; } ;
struct TYPE_5__ {TYPE_1__ base; } ;

/* Variables and functions */
 int EBUSY ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GPU_CMD ; 
 int GPU_CMD_CLEAN_INV_CACHES ; 
 int GPU_CMD_PERFCNT_CLEAR ; 
 int /*<<< orphan*/  GPU_INT_CLEAR ; 
 int GPU_IRQ_CLEAN_CACHES_COMPLETED ; 
 int GPU_IRQ_PERFCNT_SAMPLE_COMPLETED ; 
 int /*<<< orphan*/  GPU_PERFCNT_CFG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPU_PERFCNT_CFG_MODE_MANUAL ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  GPU_PRFCNT_JM_EN ; 
 int /*<<< orphan*/  GPU_PRFCNT_MMU_L2_EN ; 
 int /*<<< orphan*/  GPU_PRFCNT_SHADER_EN ; 
 int /*<<< orphan*/  GPU_PRFCNT_TILER_EN ; 
 int /*<<< orphan*/  HW_ISSUE_8186 ; 
 scalar_t__ FUNC3 (struct drm_gem_shmem_object*) ; 
 int FUNC4 (struct drm_gem_shmem_object*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct drm_gem_shmem_object* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_gem_shmem_object* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct drm_gem_shmem_object*) ; 
 int /*<<< orphan*/  FUNC9 (struct panfrost_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (struct panfrost_device*,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_2__*) ; 
 scalar_t__ FUNC13 (struct panfrost_device*) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct panfrost_device *pfdev,
					  struct panfrost_file_priv *user,
					  unsigned int counterset)
{
	struct panfrost_perfcnt *perfcnt = pfdev->perfcnt;
	struct drm_gem_shmem_object *bo;
	u32 cfg;
	int ret;

	if (user == perfcnt->user)
		return 0;
	else if (perfcnt->user)
		return -EBUSY;

	ret = FUNC14(pfdev->dev);
	if (ret < 0)
		return ret;

	bo = FUNC6(pfdev->ddev, perfcnt->bosize);
	if (FUNC3(bo))
		return FUNC4(bo);

	perfcnt->bo = FUNC16(&bo->base);

	/* Map the perfcnt buf in the address space attached to file_priv. */
	ret = FUNC12(perfcnt->bo);
	if (ret)
		goto err_put_bo;

	perfcnt->buf = FUNC7(&bo->base);
	if (FUNC3(perfcnt->buf)) {
		ret = FUNC4(perfcnt->buf);
		goto err_put_bo;
	}

	/*
	 * Invalidate the cache and clear the counters to start from a fresh
	 * state.
	 */
	FUNC15(&pfdev->perfcnt->dump_comp);
	FUNC9(pfdev, GPU_INT_CLEAR,
		  GPU_IRQ_CLEAN_CACHES_COMPLETED |
		  GPU_IRQ_PERFCNT_SAMPLE_COMPLETED);
	FUNC9(pfdev, GPU_CMD, GPU_CMD_PERFCNT_CLEAR);
	FUNC9(pfdev, GPU_CMD, GPU_CMD_CLEAN_INV_CACHES);
	ret = FUNC17(&pfdev->perfcnt->dump_comp,
					  FUNC10(1000));
	if (!ret) {
		ret = -ETIMEDOUT;
		goto err_vunmap;
	}

	perfcnt->user = user;

	/*
	 * Always use address space 0 for now.
	 * FIXME: this needs to be updated when we start using different
	 * address space.
	 */
	cfg = FUNC0(0) |
	      FUNC1(GPU_PERFCNT_CFG_MODE_MANUAL);

	/*
	 * Bifrost GPUs have 2 set of counters, but we're only interested by
	 * the first one for now.
	 */
	if (FUNC13(pfdev))
		cfg |= FUNC2(counterset);

	FUNC9(pfdev, GPU_PRFCNT_JM_EN, 0xffffffff);
	FUNC9(pfdev, GPU_PRFCNT_SHADER_EN, 0xffffffff);
	FUNC9(pfdev, GPU_PRFCNT_MMU_L2_EN, 0xffffffff);

	/*
	 * Due to PRLAM-8186 we need to disable the Tiler before we enable HW
	 * counters.
	 */
	if (FUNC11(pfdev, HW_ISSUE_8186))
		FUNC9(pfdev, GPU_PRFCNT_TILER_EN, 0);
	else
		FUNC9(pfdev, GPU_PRFCNT_TILER_EN, 0xffffffff);

	FUNC9(pfdev, GPU_PERFCNT_CFG, cfg);

	if (FUNC11(pfdev, HW_ISSUE_8186))
		FUNC9(pfdev, GPU_PRFCNT_TILER_EN, 0xffffffff);

	return 0;

err_vunmap:
	FUNC8(&perfcnt->bo->base.base, perfcnt->buf);
err_put_bo:
	FUNC5(&bo->base);
	return ret;
}