#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * fqs; int /*<<< orphan*/  ern; } ;
struct qman_fq {int /*<<< orphan*/  fqid; TYPE_1__ cb; } ;
struct TYPE_8__ {int /*<<< orphan*/  cgid; int /*<<< orphan*/  context_b; void* fq_ctrl; } ;
struct qm_mcc_initfq {TYPE_3__ fqd; void* we_mask; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  opts ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_7__ {int /*<<< orphan*/  cgrid; } ;
struct TYPE_9__ {TYPE_2__ cgr; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct qman_fq* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int QMAN_FQ_FLAG_DYNAMIC_FQID ; 
 int QMAN_FQ_FLAG_TO_DCPORTAL ; 
 int QM_FQCTRL_CGE ; 
 int QM_FQCTRL_CPCSTASH ; 
 int QM_INITFQ_WE_CGID ; 
 int QM_INITFQ_WE_CONTEXTA ; 
 int QM_INITFQ_WE_CONTEXTB ; 
 int QM_INITFQ_WE_DESTWQ ; 
 int QM_INITFQ_WE_FQCTRL ; 
 int /*<<< orphan*/  caam_fq_ern_cb ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct qman_fq*) ; 
 struct qman_fq* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qm_mcc_initfq*,int /*<<< orphan*/ ,int) ; 
 TYPE_5__ qipriv ; 
 int /*<<< orphan*/  qm_channel_caam ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,struct qman_fq*) ; 
 int /*<<< orphan*/  FUNC11 (struct qman_fq*) ; 
 int /*<<< orphan*/  FUNC12 (struct qman_fq*) ; 
 int FUNC13 (struct qman_fq*,int,struct qm_mcc_initfq*) ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static struct qman_fq *FUNC15(struct device *qidev,
					  struct qman_fq *rsp_fq,
					  dma_addr_t hwdesc,
					  int fq_sched_flag)
{
	int ret;
	struct qman_fq *req_fq;
	struct qm_mcc_initfq opts;

	req_fq = FUNC6(sizeof(*req_fq), GFP_ATOMIC);
	if (!req_fq)
		return FUNC0(-ENOMEM);

	req_fq->cb.ern = caam_fq_ern_cb;
	req_fq->cb.fqs = NULL;

	ret = FUNC10(0, QMAN_FQ_FLAG_DYNAMIC_FQID |
				QMAN_FQ_FLAG_TO_DCPORTAL, req_fq);
	if (ret) {
		FUNC4(qidev, "Failed to create session req FQ\n");
		goto create_req_fq_fail;
	}

	FUNC7(&opts, 0, sizeof(opts));
	opts.we_mask = FUNC1(QM_INITFQ_WE_FQCTRL | QM_INITFQ_WE_DESTWQ |
				   QM_INITFQ_WE_CONTEXTB |
				   QM_INITFQ_WE_CONTEXTA | QM_INITFQ_WE_CGID);
	opts.fqd.fq_ctrl = FUNC1(QM_FQCTRL_CPCSTASH | QM_FQCTRL_CGE);
	FUNC9(&opts.fqd, qm_channel_caam, 2);
	opts.fqd.context_b = FUNC2(FUNC12(rsp_fq));
	FUNC8(&opts.fqd, hwdesc);
	opts.fqd.cgid = qipriv.cgr.cgrid;

	ret = FUNC13(req_fq, fq_sched_flag, &opts);
	if (ret) {
		FUNC4(qidev, "Failed to init session req FQ\n");
		goto init_req_fq_fail;
	}

	FUNC3(qidev, "Allocated request FQ %u for CPU %u\n", req_fq->fqid,
		FUNC14());
	return req_fq;

init_req_fq_fail:
	FUNC11(req_fq);
create_req_fq_fail:
	FUNC5(req_fq);
	return FUNC0(ret);
}