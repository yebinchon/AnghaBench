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
struct pci_dev {int dummy; } ;
struct hisi_qm {scalar_t__ ver; scalar_t__ fun_type; int /*<<< orphan*/  dev_name; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  QM_ABNORMAL_EVENT_IRQ_VECTOR ; 
 int /*<<< orphan*/  QM_AEQ_EVENT_IRQ_VECTOR ; 
 int /*<<< orphan*/  QM_EQ_EVENT_IRQ_VECTOR ; 
 scalar_t__ QM_HW_PF ; 
 scalar_t__ QM_HW_V2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct hisi_qm*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qm_abnormal_irq ; 
 int /*<<< orphan*/  qm_aeq_irq ; 
 int /*<<< orphan*/  qm_irq ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hisi_qm*) ; 

__attribute__((used)) static int FUNC3(struct hisi_qm *qm)
{
	struct pci_dev *pdev = qm->pdev;
	int ret;

	ret = FUNC2(FUNC1(pdev, QM_EQ_EVENT_IRQ_VECTOR),
			  qm_irq, IRQF_SHARED, qm->dev_name, qm);
	if (ret)
		return ret;

	if (qm->ver == QM_HW_V2) {
		ret = FUNC2(FUNC1(pdev, QM_AEQ_EVENT_IRQ_VECTOR),
				  qm_aeq_irq, IRQF_SHARED, qm->dev_name, qm);
		if (ret)
			goto err_aeq_irq;

		if (qm->fun_type == QM_HW_PF) {
			ret = FUNC2(FUNC1(pdev,
					  QM_ABNORMAL_EVENT_IRQ_VECTOR),
					  qm_abnormal_irq, IRQF_SHARED,
					  qm->dev_name, qm);
			if (ret)
				goto err_abonormal_irq;
		}
	}

	return 0;

err_abonormal_irq:
	FUNC0(FUNC1(pdev, QM_AEQ_EVENT_IRQ_VECTOR), qm);
err_aeq_irq:
	FUNC0(FUNC1(pdev, QM_EQ_EVENT_IRQ_VECTOR), qm);
	return ret;
}