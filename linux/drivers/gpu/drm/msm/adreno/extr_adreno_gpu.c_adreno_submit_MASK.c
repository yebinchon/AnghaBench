#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct msm_ringbuffer {int dummy; } ;
struct msm_gpu {TYPE_3__* funcs; TYPE_1__* dev; } ;
struct msm_gem_submit {unsigned int nr_cmds; int seqno; TYPE_2__* cmd; struct msm_ringbuffer* ring; } ;
struct msm_file_private {int dummy; } ;
struct msm_drm_private {struct msm_file_private* lastctx; } ;
struct adreno_gpu {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* flush ) (struct msm_gpu*,struct msm_ringbuffer*) ;} ;
struct TYPE_5__ {int type; int size; int /*<<< orphan*/  iova; } ;
struct TYPE_4__ {struct msm_drm_private* dev_private; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CACHE_FLUSH_TS ; 
 int /*<<< orphan*/  CP_EVENT_WRITE ; 
 int /*<<< orphan*/  CP_INDIRECT_BUFFER_PFD ; 
 int /*<<< orphan*/  CP_INDIRECT_BUFFER_PFE ; 
 int /*<<< orphan*/  CP_INTERRUPT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CP_SET_CONSTANT ; 
 int /*<<< orphan*/  CP_WAIT_FOR_IDLE ; 
 int HLSQ_FLUSH ; 
#define  MSM_SUBMIT_CMD_BUF 130 
#define  MSM_SUBMIT_CMD_CTX_RESTORE_BUF 129 
#define  MSM_SUBMIT_CMD_IB_TARGET_BUF 128 
 int /*<<< orphan*/  FUNC2 (struct msm_ringbuffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct msm_ringbuffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct msm_ringbuffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct msm_ringbuffer*,int) ; 
 int /*<<< orphan*/  REG_A3XX_HLSQ_CL_KERNEL_GROUP_X_REG ; 
 int /*<<< orphan*/  REG_AXXX_CP_SCRATCH_REG2 ; 
 int /*<<< orphan*/  FUNC6 (struct adreno_gpu*) ; 
 scalar_t__ FUNC7 (struct adreno_gpu*) ; 
 int /*<<< orphan*/  FUNC8 (struct adreno_gpu*) ; 
 scalar_t__ FUNC9 (struct adreno_gpu*) ; 
 int /*<<< orphan*/  fence ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct msm_ringbuffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct msm_gpu*,struct msm_ringbuffer*) ; 
 struct adreno_gpu* FUNC13 (struct msm_gpu*) ; 

void FUNC14(struct msm_gpu *gpu, struct msm_gem_submit *submit,
		struct msm_file_private *ctx)
{
	struct adreno_gpu *adreno_gpu = FUNC13(gpu);
	struct msm_drm_private *priv = gpu->dev->dev_private;
	struct msm_ringbuffer *ring = submit->ring;
	unsigned i;

	for (i = 0; i < submit->nr_cmds; i++) {
		switch (submit->cmd[i].type) {
		case MSM_SUBMIT_CMD_IB_TARGET_BUF:
			/* ignore IB-targets */
			break;
		case MSM_SUBMIT_CMD_CTX_RESTORE_BUF:
			/* ignore if there has not been a ctx switch: */
			if (priv->lastctx == ctx)
				break;
			/* fall-thru */
		case MSM_SUBMIT_CMD_BUF:
			FUNC4(ring, FUNC8(adreno_gpu) ?
				CP_INDIRECT_BUFFER_PFE : CP_INDIRECT_BUFFER_PFD, 2);
			FUNC5(ring, FUNC10(submit->cmd[i].iova));
			FUNC5(ring, submit->cmd[i].size);
			FUNC3(ring);
			break;
		}
	}

	FUNC2(ring, REG_AXXX_CP_SCRATCH_REG2, 1);
	FUNC5(ring, submit->seqno);

	if (FUNC7(adreno_gpu) || FUNC9(adreno_gpu)) {
		/* Flush HLSQ lazy updates to make sure there is nothing
		 * pending for indirect loads after the timestamp has
		 * passed:
		 */
		FUNC4(ring, CP_EVENT_WRITE, 1);
		FUNC5(ring, HLSQ_FLUSH);
	}

	/* wait for idle before cache flush/interrupt */
	FUNC4(ring, CP_WAIT_FOR_IDLE, 1);
	FUNC5(ring, 0x00000000);

	if (!FUNC6(adreno_gpu)) {
		/* BIT(31) of CACHE_FLUSH_TS triggers CACHE_FLUSH_TS IRQ from GPU */
		FUNC4(ring, CP_EVENT_WRITE, 3);
		FUNC5(ring, CACHE_FLUSH_TS | FUNC0(31));
		FUNC5(ring, FUNC11(ring, fence));
		FUNC5(ring, submit->seqno);
	} else {
		/* BIT(31) means something else on a2xx */
		FUNC4(ring, CP_EVENT_WRITE, 3);
		FUNC5(ring, CACHE_FLUSH_TS);
		FUNC5(ring, FUNC11(ring, fence));
		FUNC5(ring, submit->seqno);
		FUNC4(ring, CP_INTERRUPT, 1);
		FUNC5(ring, 0x80000000);
	}

#if 0
	if (adreno_is_a3xx(adreno_gpu)) {
		/* Dummy set-constant to trigger context rollover */
		OUT_PKT3(ring, CP_SET_CONSTANT, 2);
		OUT_RING(ring, CP_REG(REG_A3XX_HLSQ_CL_KERNEL_GROUP_X_REG));
		OUT_RING(ring, 0x00000000);
	}
#endif

	gpu->funcs->flush(gpu, ring);
}