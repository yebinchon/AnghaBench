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
struct pci_dev {int dummy; } ;
struct hisi_qm {scalar_t__ fun_type; } ;
struct hisi_zip {TYPE_1__* ctrl; struct hisi_qm qm; } ;
struct TYPE_2__ {scalar_t__ num_vfs; } ;

/* Variables and functions */
 scalar_t__ QM_HW_PF ; 
 int /*<<< orphan*/  FUNC0 (struct hisi_qm*) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_qm*) ; 
 int /*<<< orphan*/  FUNC2 (struct hisi_zip*) ; 
 int /*<<< orphan*/  FUNC3 (struct hisi_zip*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hisi_zip*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct hisi_zip* FUNC6 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct hisi_zip *hisi_zip = FUNC6(pdev);
	struct hisi_qm *qm = &hisi_zip->qm;

	if (qm->fun_type == QM_HW_PF && hisi_zip->ctrl->num_vfs != 0)
		FUNC5(pdev);

	FUNC2(hisi_zip);
	FUNC0(qm);

	if (qm->fun_type == QM_HW_PF)
		FUNC3(hisi_zip, false);

	FUNC1(qm);
	FUNC4(hisi_zip);
}