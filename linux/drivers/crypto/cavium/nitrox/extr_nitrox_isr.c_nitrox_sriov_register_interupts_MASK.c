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
struct nitrox_q_vector {int valid; int /*<<< orphan*/  resp_tasklet; int /*<<< orphan*/  name; struct nitrox_device* ndev; } ;
struct TYPE_4__ {int entry; int vector; } ;
struct TYPE_3__ {TYPE_2__ msix; } ;
struct nitrox_device {TYPE_1__ iov; int /*<<< orphan*/  num_vecs; struct nitrox_q_vector* qvec; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nitrox_device*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQ_NAMESZ ; 
 int NON_RING_MSIX_BASE ; 
 int /*<<< orphan*/  NR_NON_RING_VECTORS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct nitrox_q_vector* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nitrox_device*) ; 
 int /*<<< orphan*/  nps_core_int_isr ; 
 int /*<<< orphan*/  nps_core_int_tasklet ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int FUNC8 (struct pci_dev*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nitrox_q_vector*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

int FUNC12(struct nitrox_device *ndev)
{
	struct pci_dev *pdev = ndev->pdev;
	struct nitrox_q_vector *qvec;
	int vec, cpu;
	int ret;

	/**
	 * only non ring vectors i.e Entry 192 is available
	 * for PF in SR-IOV mode.
	 */
	ndev->iov.msix.entry = NON_RING_MSIX_BASE;
	ret = FUNC8(pdev, &ndev->iov.msix, NR_NON_RING_VECTORS);
	if (ret) {
		FUNC1(FUNC0(ndev), "failed to allocate nps-core-int%d\n",
			NON_RING_MSIX_BASE);
		return ret;
	}

	qvec = FUNC4(NR_NON_RING_VECTORS, sizeof(*qvec), GFP_KERNEL);
	if (!qvec) {
		FUNC7(pdev);
		return -ENOMEM;
	}
	qvec->ndev = ndev;

	ndev->qvec = qvec;
	ndev->num_vecs = NR_NON_RING_VECTORS;
	FUNC10(qvec->name, IRQ_NAMESZ, "nitrox-core-int%d",
		 NON_RING_MSIX_BASE);

	vec = ndev->iov.msix.vector;
	ret = FUNC9(vec, nps_core_int_isr, 0, qvec->name, qvec);
	if (ret) {
		FUNC1(FUNC0(ndev), "irq failed for nitrox-core-int%d\n",
			NON_RING_MSIX_BASE);
		goto iov_irq_fail;
	}
	cpu = FUNC6();
	FUNC3(vec, FUNC2(cpu));

	FUNC11(&qvec->resp_tasklet, nps_core_int_tasklet,
		     (unsigned long)qvec);
	qvec->valid = true;

	return 0;

iov_irq_fail:
	FUNC5(ndev);
	return ret;
}