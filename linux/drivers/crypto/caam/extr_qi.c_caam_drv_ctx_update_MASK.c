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
typedef  int u32 ;
struct qman_fq {int dummy; } ;
struct device {int dummy; } ;
struct caam_drv_ctx {struct qman_fq* req_fq; int /*<<< orphan*/  context_a; int /*<<< orphan*/  sh_desc; void** prehdr; int /*<<< orphan*/  rsp_fq; struct device* qidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct qman_fq*) ; 
 int MAX_SDLEN ; 
 int PREHDR_ABS ; 
 int PREHDR_RSLS_SHIFT ; 
 int FUNC1 (struct qman_fq*) ; 
 void* FUNC2 (int) ; 
 struct qman_fq* FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct qman_fq*) ; 
 scalar_t__ FUNC10 (struct device*,struct qman_fq*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct qman_fq*) ; 

int FUNC13(struct caam_drv_ctx *drv_ctx, u32 *sh_desc)
{
	int ret;
	u32 num_words;
	struct qman_fq *new_fq, *old_fq;
	struct device *qidev = drv_ctx->qidev;

	num_words = FUNC5(sh_desc);
	if (num_words > MAX_SDLEN) {
		FUNC6(qidev, "Invalid descriptor len: %d words\n", num_words);
		return -EINVAL;
	}

	/* Note down older req FQ */
	old_fq = drv_ctx->req_fq;

	/* Create a new req FQ in parked state */
	new_fq = FUNC3(drv_ctx->qidev, drv_ctx->rsp_fq,
				    drv_ctx->context_a, 0);
	if (FUNC0(new_fq)) {
		FUNC6(qidev, "FQ allocation for shdesc update failed\n");
		return FUNC1(new_fq);
	}

	/* Hook up new FQ to context so that new requests keep queuing */
	drv_ctx->req_fq = new_fq;

	/* Empty and remove the older FQ */
	ret = FUNC9(old_fq);
	if (ret) {
		FUNC6(qidev, "Old CAAM FQ empty failed: %d\n", ret);

		/* We can revert to older FQ */
		drv_ctx->req_fq = old_fq;

		if (FUNC10(qidev, new_fq))
			FUNC7(qidev, "New CAAM FQ kill failed\n");

		return ret;
	}

	/*
	 * Re-initialise pre-header. Set RSLS and SDLEN.
	 * Update the shared descriptor for driver context.
	 */
	drv_ctx->prehdr[0] = FUNC2((1 << PREHDR_RSLS_SHIFT) |
					   num_words);
	drv_ctx->prehdr[1] = FUNC2(PREHDR_ABS);
	FUNC11(drv_ctx->sh_desc, sh_desc, FUNC4(sh_desc));
	FUNC8(qidev, drv_ctx->context_a,
				   sizeof(drv_ctx->sh_desc) +
				   sizeof(drv_ctx->prehdr),
				   DMA_BIDIRECTIONAL);

	/* Put the new FQ in scheduled state */
	ret = FUNC12(new_fq);
	if (ret) {
		FUNC6(qidev, "Fail to sched new CAAM FQ, ecode = %d\n", ret);

		/*
		 * We can kill new FQ and revert to old FQ.
		 * Since the desc is already modified, it is success case
		 */

		drv_ctx->req_fq = old_fq;

		if (FUNC10(qidev, new_fq))
			FUNC7(qidev, "New CAAM FQ kill failed\n");
	} else if (FUNC10(qidev, old_fq)) {
		FUNC7(qidev, "Old CAAM FQ kill failed\n");
	}

	return 0;
}