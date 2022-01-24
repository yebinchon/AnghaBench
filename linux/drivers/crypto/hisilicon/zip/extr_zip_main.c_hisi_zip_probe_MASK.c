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
struct pci_device_id {int dummy; } ;
struct pci_dev {scalar_t__ device; int /*<<< orphan*/  dev; } ;
struct hisi_qm {int ver; scalar_t__ fun_type; int use_dma_api; void* qp_num; void* qp_base; int /*<<< orphan*/  dev_name; int /*<<< orphan*/  sqe_size; struct pci_dev* pdev; } ;
struct hisi_zip {struct hisi_qm qm; } ;
typedef  enum qm_hw_ver { ____Placeholder_qm_hw_ver } qm_hw_ver ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* HZIP_PF_DEF_Q_BASE ; 
 void* HZIP_PF_DEF_Q_NUM ; 
 void* HZIP_QUEUE_NUM_V1 ; 
 int /*<<< orphan*/  HZIP_SQE_SIZE ; 
 scalar_t__ PCI_DEVICE_ID_ZIP_PF ; 
 scalar_t__ QM_HW_PF ; 
 int QM_HW_UNKNOWN ; 
 scalar_t__ QM_HW_V1 ; 
 scalar_t__ QM_HW_V2 ; 
 scalar_t__ QM_HW_VF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct hisi_zip* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hisi_qm*,void**,void**) ; 
 int FUNC4 (struct hisi_qm*) ; 
 int FUNC5 (struct hisi_qm*) ; 
 int /*<<< orphan*/  FUNC6 (struct hisi_qm*) ; 
 int /*<<< orphan*/  FUNC7 (struct hisi_zip*) ; 
 int FUNC8 (struct hisi_zip*) ; 
 int /*<<< orphan*/  hisi_zip_name ; 
 int FUNC9 (struct hisi_zip*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,struct hisi_zip*) ; 
 void* pf_q_num ; 
 int uacce_mode ; 

__attribute__((used)) static int FUNC11(struct pci_dev *pdev, const struct pci_device_id *id)
{
	struct hisi_zip *hisi_zip;
	enum qm_hw_ver rev_id;
	struct hisi_qm *qm;
	int ret;

	rev_id = FUNC2(pdev);
	if (rev_id == QM_HW_UNKNOWN)
		return -EINVAL;

	hisi_zip = FUNC1(&pdev->dev, sizeof(*hisi_zip), GFP_KERNEL);
	if (!hisi_zip)
		return -ENOMEM;
	FUNC10(pdev, hisi_zip);

	qm = &hisi_zip->qm;
	qm->pdev = pdev;
	qm->ver = rev_id;

	qm->sqe_size = HZIP_SQE_SIZE;
	qm->dev_name = hisi_zip_name;
	qm->fun_type = (pdev->device == PCI_DEVICE_ID_ZIP_PF) ? QM_HW_PF :
								QM_HW_VF;
	switch (uacce_mode) {
	case 0:
		qm->use_dma_api = true;
		break;
	case 1:
		qm->use_dma_api = false;
		break;
	case 2:
		qm->use_dma_api = true;
		break;
	default:
		return -EINVAL;
	}

	ret = FUNC4(qm);
	if (ret) {
		FUNC0(&pdev->dev, "Failed to init qm!\n");
		return ret;
	}

	if (qm->fun_type == QM_HW_PF) {
		ret = FUNC9(hisi_zip);
		if (ret)
			return ret;

		qm->qp_base = HZIP_PF_DEF_Q_BASE;
		qm->qp_num = pf_q_num;
	} else if (qm->fun_type == QM_HW_VF) {
		/*
		 * have no way to get qm configure in VM in v1 hardware,
		 * so currently force PF to uses HZIP_PF_DEF_Q_NUM, and force
		 * to trigger only one VF in v1 hardware.
		 *
		 * v2 hardware has no such problem.
		 */
		if (qm->ver == QM_HW_V1) {
			qm->qp_base = HZIP_PF_DEF_Q_NUM;
			qm->qp_num = HZIP_QUEUE_NUM_V1 - HZIP_PF_DEF_Q_NUM;
		} else if (qm->ver == QM_HW_V2)
			/* v2 starts to support get vft by mailbox */
			FUNC3(qm, &qm->qp_base, &qm->qp_num);
	}

	ret = FUNC5(qm);
	if (ret)
		goto err_qm_uninit;

	ret = FUNC8(hisi_zip);
	if (ret)
		FUNC0(&pdev->dev, "Failed to init debugfs (%d)!\n", ret);

	FUNC7(hisi_zip);

	return 0;

err_qm_uninit:
	FUNC6(qm);
	return ret;
}