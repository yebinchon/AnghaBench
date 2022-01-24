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
struct hisi_qm {scalar_t__ ver; scalar_t__ fun_type; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  QM_ABNORMAL_EVENT_IRQ_VECTOR ; 
 int /*<<< orphan*/  QM_AEQ_EVENT_IRQ_VECTOR ; 
 int /*<<< orphan*/  QM_EQ_EVENT_IRQ_VECTOR ; 
 scalar_t__ QM_HW_PF ; 
 scalar_t__ QM_HW_V2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct hisi_qm*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hisi_qm *qm)
{
	struct pci_dev *pdev = qm->pdev;

	FUNC0(FUNC1(pdev, QM_EQ_EVENT_IRQ_VECTOR), qm);

	if (qm->ver == QM_HW_V2) {
		FUNC0(FUNC1(pdev, QM_AEQ_EVENT_IRQ_VECTOR), qm);

		if (qm->fun_type == QM_HW_PF)
			FUNC0(FUNC1(pdev,
				 QM_ABNORMAL_EVENT_IRQ_VECTOR), qm);
	}
}