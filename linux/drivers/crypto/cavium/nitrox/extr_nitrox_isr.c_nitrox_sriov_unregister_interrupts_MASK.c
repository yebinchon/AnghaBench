#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct nitrox_q_vector {int valid; int /*<<< orphan*/  resp_tasklet; } ;
struct TYPE_3__ {int vector; } ;
struct TYPE_4__ {TYPE_1__ msix; } ;
struct nitrox_device {int num_vecs; struct nitrox_q_vector* qvec; TYPE_2__ iov; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct nitrox_q_vector*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nitrox_q_vector*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct nitrox_device *ndev)
{
	struct pci_dev *pdev = ndev->pdev;
	int i;

	for (i = 0; i < ndev->num_vecs; i++) {
		struct nitrox_q_vector *qvec;
		int vec;

		qvec = ndev->qvec + i;
		if (!qvec->valid)
			continue;

		vec = ndev->iov.msix.vector;
		FUNC1(vec, NULL);
		FUNC0(vec, qvec);

		FUNC4(&qvec->resp_tasklet);
		FUNC5(&qvec->resp_tasklet);
		qvec->valid = false;
	}
	FUNC2(ndev->qvec);
	ndev->qvec = NULL;
	FUNC3(pdev);
}