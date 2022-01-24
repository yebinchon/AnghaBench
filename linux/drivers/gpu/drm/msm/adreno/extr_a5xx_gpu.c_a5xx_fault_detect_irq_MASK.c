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
struct msm_ringbuffer {int id; int /*<<< orphan*/  seqno; } ;
struct msm_gpu {int /*<<< orphan*/  recover_work; int /*<<< orphan*/  hangcheck_timer; TYPE_1__* funcs; struct drm_device* dev; } ;
struct msm_drm_private {int /*<<< orphan*/  wq; } ;
struct drm_device {int /*<<< orphan*/  dev; struct msm_drm_private* dev_private; } ;
struct TYPE_2__ {struct msm_ringbuffer* (* active_ring ) (struct msm_gpu*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_A5XX_CP_IB1_BASE ; 
 int /*<<< orphan*/  REG_A5XX_CP_IB1_BASE_HI ; 
 int /*<<< orphan*/  REG_A5XX_CP_IB1_BUFSZ ; 
 int /*<<< orphan*/  REG_A5XX_CP_IB2_BASE ; 
 int /*<<< orphan*/  REG_A5XX_CP_IB2_BASE_HI ; 
 int /*<<< orphan*/  REG_A5XX_CP_IB2_BUFSZ ; 
 int /*<<< orphan*/  REG_A5XX_CP_RB_RPTR ; 
 int /*<<< orphan*/  REG_A5XX_CP_RB_WPTR ; 
 int /*<<< orphan*/  REG_A5XX_RBBM_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_gpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct msm_ringbuffer* FUNC5 (struct msm_gpu*) ; 

__attribute__((used)) static void FUNC6(struct msm_gpu *gpu)
{
	struct drm_device *dev = gpu->dev;
	struct msm_drm_private *priv = dev->dev_private;
	struct msm_ringbuffer *ring = gpu->funcs->active_ring(gpu);

	FUNC0(dev->dev, "gpu fault ring %d fence %x status %8.8X rb %4.4x/%4.4x ib1 %16.16llX/%4.4x ib2 %16.16llX/%4.4x\n",
		ring ? ring->id : -1, ring ? ring->seqno : 0,
		FUNC2(gpu, REG_A5XX_RBBM_STATUS),
		FUNC2(gpu, REG_A5XX_CP_RB_RPTR),
		FUNC2(gpu, REG_A5XX_CP_RB_WPTR),
		FUNC3(gpu, REG_A5XX_CP_IB1_BASE, REG_A5XX_CP_IB1_BASE_HI),
		FUNC2(gpu, REG_A5XX_CP_IB1_BUFSZ),
		FUNC3(gpu, REG_A5XX_CP_IB2_BASE, REG_A5XX_CP_IB2_BASE_HI),
		FUNC2(gpu, REG_A5XX_CP_IB2_BUFSZ));

	/* Turn off the hangcheck timer to keep it from bothering us */
	FUNC1(&gpu->hangcheck_timer);

	FUNC4(priv->wq, &gpu->recover_work);
}