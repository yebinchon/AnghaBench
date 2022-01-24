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
struct qm_sqc {int cq_num; int dw6; void* w8; int /*<<< orphan*/  dw3; int /*<<< orphan*/  w13; } ;
struct qm_cqc {int cq_num; int dw6; void* w8; int /*<<< orphan*/  dw3; int /*<<< orphan*/  w13; } ;
struct hisi_qp {int /*<<< orphan*/  cqe_dma; int /*<<< orphan*/  alg_type; int /*<<< orphan*/  sqe_dma; struct hisi_qm* qm; } ;
struct hisi_qm {int ver; int /*<<< orphan*/  sqe_size; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
typedef  enum qm_hw_ver { ____Placeholder_qm_hw_ver } qm_hw_ver ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct qm_sqc*,int /*<<< orphan*/ ,int) ; 
 int QM_CQ_FLAG_SHIFT ; 
 int QM_CQ_PHASE_SHIFT ; 
 int QM_HW_V1 ; 
 int QM_HW_V2 ; 
 int /*<<< orphan*/  QM_MB_CMD_CQC ; 
 int /*<<< orphan*/  QM_MB_CMD_SQC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* QM_Q_DEPTH ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct qm_sqc*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct qm_sqc*) ; 
 struct qm_sqc* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hisi_qp*) ; 
 int FUNC12 (struct hisi_qm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct hisi_qp *qp, int qp_id, int pasid)
{
	struct hisi_qm *qm = qp->qm;
	struct device *dev = &qm->pdev->dev;
	enum qm_hw_ver ver = qm->ver;
	struct qm_sqc *sqc;
	struct qm_cqc *cqc;
	dma_addr_t sqc_dma;
	dma_addr_t cqc_dma;
	int ret;

	FUNC11(qp);

	sqc = FUNC10(sizeof(struct qm_sqc), GFP_KERNEL);
	if (!sqc)
		return -ENOMEM;
	sqc_dma = FUNC6(dev, sqc, sizeof(struct qm_sqc),
				 DMA_TO_DEVICE);
	if (FUNC7(dev, sqc_dma)) {
		FUNC9(sqc);
		return -ENOMEM;
	}

	FUNC0(sqc, qp->sqe_dma, pasid);
	if (ver == QM_HW_V1) {
		sqc->dw3 = FUNC3(0, 0, 0, qm->sqe_size);
		sqc->w8 = QM_Q_DEPTH - 1;
	} else if (ver == QM_HW_V2) {
		sqc->dw3 = FUNC4(qm->sqe_size);
		sqc->w8 = 0; /* rand_qc */
	}
	sqc->cq_num = qp_id;
	sqc->w13 = FUNC5(0, 1, qp->alg_type);

	ret = FUNC12(qm, QM_MB_CMD_SQC, sqc_dma, qp_id, 0);
	FUNC8(dev, sqc_dma, sizeof(struct qm_sqc), DMA_TO_DEVICE);
	FUNC9(sqc);
	if (ret)
		return ret;

	cqc = FUNC10(sizeof(struct qm_cqc), GFP_KERNEL);
	if (!cqc)
		return -ENOMEM;
	cqc_dma = FUNC6(dev, cqc, sizeof(struct qm_cqc),
				 DMA_TO_DEVICE);
	if (FUNC7(dev, cqc_dma)) {
		FUNC9(cqc);
		return -ENOMEM;
	}

	FUNC0(cqc, qp->cqe_dma, pasid);
	if (ver == QM_HW_V1) {
		cqc->dw3 = FUNC1(0, 0, 0, 4);
		cqc->w8 = QM_Q_DEPTH - 1;
	} else if (ver == QM_HW_V2) {
		cqc->dw3 = FUNC2(4);
		cqc->w8 = 0;
	}
	cqc->dw6 = 1 << QM_CQ_PHASE_SHIFT | 1 << QM_CQ_FLAG_SHIFT;

	ret = FUNC12(qm, QM_MB_CMD_CQC, cqc_dma, qp_id, 0);
	FUNC8(dev, cqc_dma, sizeof(struct qm_cqc), DMA_TO_DEVICE);
	FUNC9(cqc);

	return ret;
}