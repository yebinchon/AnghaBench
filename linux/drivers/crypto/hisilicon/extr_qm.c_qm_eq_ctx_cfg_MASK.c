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
struct qm_eqc {int dw6; void* base_h; void* base_l; int /*<<< orphan*/  dw3; } ;
struct qm_aeqc {int dw6; void* base_h; void* base_l; int /*<<< orphan*/  dw3; } ;
struct hisi_qm {scalar_t__ ver; int /*<<< orphan*/  aeqe_dma; int /*<<< orphan*/  eqe_dma; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int QM_EQC_PHASE_SHIFT ; 
 int /*<<< orphan*/  QM_EQE_AEQE_SIZE ; 
 scalar_t__ QM_HW_V1 ; 
 int /*<<< orphan*/  QM_MB_CMD_AEQC ; 
 int /*<<< orphan*/  QM_MB_CMD_EQC ; 
 int QM_Q_DEPTH ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct qm_eqc*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qm_eqc*) ; 
 struct qm_eqc* FUNC4 (int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hisi_qm*) ; 
 int FUNC7 (struct hisi_qm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct hisi_qm *qm)
{
	struct device *dev = &qm->pdev->dev;
	struct qm_eqc *eqc;
	struct qm_aeqc *aeqc;
	dma_addr_t eqc_dma;
	dma_addr_t aeqc_dma;
	int ret;

	FUNC6(qm);

	eqc = FUNC4(sizeof(struct qm_eqc), GFP_KERNEL);
	if (!eqc)
		return -ENOMEM;
	eqc_dma = FUNC0(dev, eqc, sizeof(struct qm_eqc),
				 DMA_TO_DEVICE);
	if (FUNC1(dev, eqc_dma)) {
		FUNC3(eqc);
		return -ENOMEM;
	}

	eqc->base_l = FUNC5(qm->eqe_dma);
	eqc->base_h = FUNC8(qm->eqe_dma);
	if (qm->ver == QM_HW_V1)
		eqc->dw3 = QM_EQE_AEQE_SIZE;
	eqc->dw6 = (QM_Q_DEPTH - 1) | (1 << QM_EQC_PHASE_SHIFT);
	ret = FUNC7(qm, QM_MB_CMD_EQC, eqc_dma, 0, 0);
	FUNC2(dev, eqc_dma, sizeof(struct qm_eqc), DMA_TO_DEVICE);
	FUNC3(eqc);
	if (ret)
		return ret;

	aeqc = FUNC4(sizeof(struct qm_aeqc), GFP_KERNEL);
	if (!aeqc)
		return -ENOMEM;
	aeqc_dma = FUNC0(dev, aeqc, sizeof(struct qm_aeqc),
				  DMA_TO_DEVICE);
	if (FUNC1(dev, aeqc_dma)) {
		FUNC3(aeqc);
		return -ENOMEM;
	}

	aeqc->base_l = FUNC5(qm->aeqe_dma);
	aeqc->base_h = FUNC8(qm->aeqe_dma);
	aeqc->dw6 = (QM_Q_DEPTH - 1) | (1 << QM_EQC_PHASE_SHIFT);

	ret = FUNC7(qm, QM_MB_CMD_AEQC, aeqc_dma, 0, 0);
	FUNC2(dev, aeqc_dma, sizeof(struct qm_aeqc), DMA_TO_DEVICE);
	FUNC3(aeqc);

	return ret;
}