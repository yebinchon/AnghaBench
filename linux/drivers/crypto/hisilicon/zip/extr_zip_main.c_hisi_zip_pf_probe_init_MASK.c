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
struct hisi_zip_ctrl {struct hisi_zip* hisi_zip; } ;
struct hisi_qm {int ver; int /*<<< orphan*/  ctrl_qp_num; TYPE_1__* pdev; } ;
struct hisi_zip {struct hisi_zip_ctrl* ctrl; struct hisi_qm qm; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HZIP_QUEUE_NUM_V1 ; 
 int /*<<< orphan*/  HZIP_QUEUE_NUM_V2 ; 
#define  QM_HW_V1 129 
#define  QM_HW_V2 128 
 struct hisi_zip_ctrl* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_zip*) ; 
 int /*<<< orphan*/  FUNC2 (struct hisi_zip*) ; 
 int /*<<< orphan*/  FUNC3 (struct hisi_zip*) ; 

__attribute__((used)) static int FUNC4(struct hisi_zip *hisi_zip)
{
	struct hisi_qm *qm = &hisi_zip->qm;
	struct hisi_zip_ctrl *ctrl;

	ctrl = FUNC0(&qm->pdev->dev, sizeof(*ctrl), GFP_KERNEL);
	if (!ctrl)
		return -ENOMEM;

	hisi_zip->ctrl = ctrl;
	ctrl->hisi_zip = hisi_zip;

	switch (qm->ver) {
	case QM_HW_V1:
		qm->ctrl_qp_num = HZIP_QUEUE_NUM_V1;
		break;

	case QM_HW_V2:
		qm->ctrl_qp_num = HZIP_QUEUE_NUM_V2;
		break;

	default:
		return -EINVAL;
	}

	FUNC3(hisi_zip);
	FUNC2(hisi_zip);
	FUNC1(hisi_zip);

	return 0;
}