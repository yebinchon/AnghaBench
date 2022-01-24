#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct msm_ringbuffer {int id; int /*<<< orphan*/  seqno; } ;
struct msm_gpu {int /*<<< orphan*/  recover_work; int /*<<< orphan*/  hangcheck_timer; TYPE_2__* pdev; TYPE_1__* funcs; struct drm_device* dev; } ;
struct msm_drm_private {int /*<<< orphan*/  wq; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct adreno_gpu {int dummy; } ;
struct a6xx_gpu {int /*<<< orphan*/  gmu; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct msm_ringbuffer* (* active_ring ) (struct msm_gpu*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_A6XX_CP_IB1_BASE ; 
 int /*<<< orphan*/  REG_A6XX_CP_IB1_BASE_HI ; 
 int /*<<< orphan*/  REG_A6XX_CP_IB1_REM_SIZE ; 
 int /*<<< orphan*/  REG_A6XX_CP_IB2_BASE ; 
 int /*<<< orphan*/  REG_A6XX_CP_IB2_BASE_HI ; 
 int /*<<< orphan*/  REG_A6XX_CP_IB2_REM_SIZE ; 
 int /*<<< orphan*/  REG_A6XX_CP_RB_RPTR ; 
 int /*<<< orphan*/  REG_A6XX_CP_RB_WPTR ; 
 int /*<<< orphan*/  REG_A6XX_GMU_GMU_PWR_COL_KEEPALIVE ; 
 int /*<<< orphan*/  REG_A6XX_RBBM_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct msm_gpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct msm_ringbuffer* FUNC6 (struct msm_gpu*) ; 
 struct a6xx_gpu* FUNC7 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC8 (struct msm_gpu*) ; 

__attribute__((used)) static void FUNC9(struct msm_gpu *gpu)
{
	struct adreno_gpu *adreno_gpu = FUNC8(gpu);
	struct a6xx_gpu *a6xx_gpu = FUNC7(adreno_gpu);
	struct drm_device *dev = gpu->dev;
	struct msm_drm_private *priv = dev->dev_private;
	struct msm_ringbuffer *ring = gpu->funcs->active_ring(gpu);

	/*
	 * Force the GPU to stay on until after we finish
	 * collecting information
	 */
	FUNC2(&a6xx_gpu->gmu, REG_A6XX_GMU_GMU_PWR_COL_KEEPALIVE, 1);

	FUNC0(&gpu->pdev->dev,
		"gpu fault ring %d fence %x status %8.8X rb %4.4x/%4.4x ib1 %16.16llX/%4.4x ib2 %16.16llX/%4.4x\n",
		ring ? ring->id : -1, ring ? ring->seqno : 0,
		FUNC3(gpu, REG_A6XX_RBBM_STATUS),
		FUNC3(gpu, REG_A6XX_CP_RB_RPTR),
		FUNC3(gpu, REG_A6XX_CP_RB_WPTR),
		FUNC4(gpu, REG_A6XX_CP_IB1_BASE, REG_A6XX_CP_IB1_BASE_HI),
		FUNC3(gpu, REG_A6XX_CP_IB1_REM_SIZE),
		FUNC4(gpu, REG_A6XX_CP_IB2_BASE, REG_A6XX_CP_IB2_BASE_HI),
		FUNC3(gpu, REG_A6XX_CP_IB2_REM_SIZE));

	/* Turn off the hangcheck timer to keep it from bothering us */
	FUNC1(&gpu->hangcheck_timer);

	FUNC5(priv->wq, &gpu->recover_work);
}