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
typedef  int /*<<< orphan*/  uint32_t ;
struct msm_gpu {int /*<<< orphan*/  recover_work; int /*<<< orphan*/  name; struct drm_device* dev; } ;
struct msm_drm_private {int /*<<< orphan*/  wq; } ;
struct drm_device {int /*<<< orphan*/  dev; struct msm_drm_private* dev_private; } ;
struct adreno_gpu {int dummy; } ;
struct a5xx_gpu {int /*<<< orphan*/ * cur_ring; int /*<<< orphan*/ * next_ring; int /*<<< orphan*/  preempt_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PREEMPT_FAULTED ; 
 int /*<<< orphan*/  PREEMPT_NONE ; 
 int /*<<< orphan*/  PREEMPT_PENDING ; 
 int /*<<< orphan*/  PREEMPT_TRIGGERED ; 
 int /*<<< orphan*/  REG_A5XX_CP_CONTEXT_SWITCH_CNTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct a5xx_gpu*,int /*<<< orphan*/ ) ; 
 struct a5xx_gpu* FUNC5 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC6 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct a5xx_gpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct msm_gpu*,int /*<<< orphan*/ *) ; 

void FUNC10(struct msm_gpu *gpu)
{
	uint32_t status;
	struct adreno_gpu *adreno_gpu = FUNC6(gpu);
	struct a5xx_gpu *a5xx_gpu = FUNC5(adreno_gpu);
	struct drm_device *dev = gpu->dev;
	struct msm_drm_private *priv = dev->dev_private;

	if (!FUNC7(a5xx_gpu, PREEMPT_TRIGGERED, PREEMPT_PENDING))
		return;

	/* Delete the preemption watchdog timer */
	FUNC1(&a5xx_gpu->preempt_timer);

	/*
	 * The hardware should be setting CP_CONTEXT_SWITCH_CNTL to zero before
	 * firing the interrupt, but there is a non zero chance of a hardware
	 * condition or a software race that could set it again before we have a
	 * chance to finish. If that happens, log and go for recovery
	 */
	status = FUNC2(gpu, REG_A5XX_CP_CONTEXT_SWITCH_CNTL);
	if (FUNC8(status)) {
		FUNC4(a5xx_gpu, PREEMPT_FAULTED);
		FUNC0(dev->dev, "%s: Preemption failed to complete\n",
			gpu->name);
		FUNC3(priv->wq, &gpu->recover_work);
		return;
	}

	a5xx_gpu->cur_ring = a5xx_gpu->next_ring;
	a5xx_gpu->next_ring = NULL;

	FUNC9(gpu, a5xx_gpu->cur_ring);

	FUNC4(a5xx_gpu, PREEMPT_NONE);
}