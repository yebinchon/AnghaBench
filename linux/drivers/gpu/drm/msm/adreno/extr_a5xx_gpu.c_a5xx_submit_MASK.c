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
struct msm_ringbuffer {size_t id; } ;
struct msm_gpu {TYPE_1__* dev; } ;
struct msm_gem_submit {unsigned int nr_cmds; int seqno; TYPE_2__* cmd; struct msm_ringbuffer* ring; scalar_t__ in_rb; } ;
struct msm_file_private {int dummy; } ;
struct msm_drm_private {struct msm_file_private* lastctx; } ;
struct adreno_gpu {int dummy; } ;
struct a5xx_gpu {int /*<<< orphan*/ * preempt_iova; } ;
struct TYPE_4__ {int type; int size; int /*<<< orphan*/  iova; } ;
struct TYPE_3__ {struct msm_drm_private* dev_private; } ;

/* Variables and functions */
 int CACHE_FLUSH_TS ; 
 int /*<<< orphan*/  CONFIG_DRM_MSM_GPU_SUDO ; 
 int /*<<< orphan*/  CP_CONTEXT_SWITCH_YIELD ; 
 int /*<<< orphan*/  CP_EVENT_WRITE ; 
 int /*<<< orphan*/  CP_INDIRECT_BUFFER_PFE ; 
 int /*<<< orphan*/  CP_PREEMPT_ENABLE_GLOBAL ; 
 int /*<<< orphan*/  CP_SET_PROTECTED_MODE ; 
 int /*<<< orphan*/  CP_SET_RENDER_MODE ; 
 int /*<<< orphan*/  CP_YIELD_ENABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  MSM_SUBMIT_CMD_BUF 130 
#define  MSM_SUBMIT_CMD_CTX_RESTORE_BUF 129 
#define  MSM_SUBMIT_CMD_IB_TARGET_BUF 128 
 int /*<<< orphan*/  FUNC1 (struct msm_ringbuffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_ringbuffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_ringbuffer*,int) ; 
 int /*<<< orphan*/  REG_A5XX_CP_CONTEXT_SWITCH_SAVE_ADDR_LO ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct msm_gpu*,struct msm_ringbuffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct msm_gpu*,struct msm_gem_submit*,struct msm_file_private*) ; 
 int /*<<< orphan*/  fence ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct msm_ringbuffer*,int /*<<< orphan*/ ) ; 
 struct a5xx_gpu* FUNC10 (struct adreno_gpu*) ; 
 struct adreno_gpu* FUNC11 (struct msm_gpu*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct msm_gpu *gpu, struct msm_gem_submit *submit,
	struct msm_file_private *ctx)
{
	struct adreno_gpu *adreno_gpu = FUNC11(gpu);
	struct a5xx_gpu *a5xx_gpu = FUNC10(adreno_gpu);
	struct msm_drm_private *priv = gpu->dev->dev_private;
	struct msm_ringbuffer *ring = submit->ring;
	unsigned int i, ibs = 0;

	if (FUNC0(CONFIG_DRM_MSM_GPU_SUDO) && submit->in_rb) {
		priv->lastctx = NULL;
		FUNC7(gpu, submit, ctx);
		return;
	}

	FUNC2(ring, CP_PREEMPT_ENABLE_GLOBAL, 1);
	FUNC3(ring, 0x02);

	/* Turn off protected mode to write to special registers */
	FUNC2(ring, CP_SET_PROTECTED_MODE, 1);
	FUNC3(ring, 0);

	/* Set the save preemption record for the ring/command */
	FUNC1(ring, REG_A5XX_CP_CONTEXT_SWITCH_SAVE_ADDR_LO, 2);
	FUNC3(ring, FUNC8(a5xx_gpu->preempt_iova[submit->ring->id]));
	FUNC3(ring, FUNC12(a5xx_gpu->preempt_iova[submit->ring->id]));

	/* Turn back on protected mode */
	FUNC2(ring, CP_SET_PROTECTED_MODE, 1);
	FUNC3(ring, 1);

	/* Enable local preemption for finegrain preemption */
	FUNC2(ring, CP_PREEMPT_ENABLE_GLOBAL, 1);
	FUNC3(ring, 0x02);

	/* Allow CP_CONTEXT_SWITCH_YIELD packets in the IB2 */
	FUNC2(ring, CP_YIELD_ENABLE, 1);
	FUNC3(ring, 0x02);

	/* Submit the commands */
	for (i = 0; i < submit->nr_cmds; i++) {
		switch (submit->cmd[i].type) {
		case MSM_SUBMIT_CMD_IB_TARGET_BUF:
			break;
		case MSM_SUBMIT_CMD_CTX_RESTORE_BUF:
			if (priv->lastctx == ctx)
				break;
			/* fall-thru */
		case MSM_SUBMIT_CMD_BUF:
			FUNC2(ring, CP_INDIRECT_BUFFER_PFE, 3);
			FUNC3(ring, FUNC8(submit->cmd[i].iova));
			FUNC3(ring, FUNC12(submit->cmd[i].iova));
			FUNC3(ring, submit->cmd[i].size);
			ibs++;
			break;
		}
	}

	/*
	 * Write the render mode to NULL (0) to indicate to the CP that the IBs
	 * are done rendering - otherwise a lucky preemption would start
	 * replaying from the last checkpoint
	 */
	FUNC2(ring, CP_SET_RENDER_MODE, 5);
	FUNC3(ring, 0);
	FUNC3(ring, 0);
	FUNC3(ring, 0);
	FUNC3(ring, 0);
	FUNC3(ring, 0);

	/* Turn off IB level preemptions */
	FUNC2(ring, CP_YIELD_ENABLE, 1);
	FUNC3(ring, 0x01);

	/* Write the fence to the scratch register */
	FUNC1(ring, FUNC4(2), 1);
	FUNC3(ring, submit->seqno);

	/*
	 * Execute a CACHE_FLUSH_TS event. This will ensure that the
	 * timestamp is written to the memory and then triggers the interrupt
	 */
	FUNC2(ring, CP_EVENT_WRITE, 4);
	FUNC3(ring, CACHE_FLUSH_TS | (1 << 31));
	FUNC3(ring, FUNC8(FUNC9(ring, fence)));
	FUNC3(ring, FUNC12(FUNC9(ring, fence)));
	FUNC3(ring, submit->seqno);

	/* Yield the floor on command completion */
	FUNC2(ring, CP_CONTEXT_SWITCH_YIELD, 4);
	/*
	 * If dword[2:1] are non zero, they specify an address for the CP to
	 * write the value of dword[3] to on preemption complete. Write 0 to
	 * skip the write
	 */
	FUNC3(ring, 0x00);
	FUNC3(ring, 0x00);
	/* Data value - not used if the address above is 0 */
	FUNC3(ring, 0x01);
	/* Set bit 0 to trigger an interrupt on preempt complete */
	FUNC3(ring, 0x01);

	FUNC5(gpu, ring);

	/* Check to see if we need to start preemption */
	FUNC6(gpu);
}