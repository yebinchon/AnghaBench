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
struct nitrox_q_vector {int ring; int valid; int /*<<< orphan*/  resp_tasklet; int /*<<< orphan*/  name; struct nitrox_device* ndev; int /*<<< orphan*/ * cmdq; } ;
struct nitrox_device {int num_vecs; int nr_queues; struct nitrox_q_vector* qvec; int /*<<< orphan*/ * pkt_inq; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nitrox_device*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQ_NAMESZ ; 
 int NON_RING_MSIX_BASE ; 
 int NR_RING_VECTORS ; 
 int /*<<< orphan*/  PCI_IRQ_MSIX ; 
 int PKT_RING_MSIX_BASE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct nitrox_q_vector* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nitrox_device*) ; 
 int /*<<< orphan*/  nps_core_int_isr ; 
 int /*<<< orphan*/  nps_core_int_tasklet ; 
 int /*<<< orphan*/  nps_pkt_slc_isr ; 
 int FUNC6 () ; 
 int FUNC7 (struct pci_dev*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int FUNC9 (struct pci_dev*,int) ; 
 int FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  pkt_slc_resp_tasklet ; 
 int FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nitrox_q_vector*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

int FUNC14(struct nitrox_device *ndev)
{
	struct pci_dev *pdev = ndev->pdev;
	struct nitrox_q_vector *qvec;
	int nr_vecs, vec, cpu;
	int ret, i;

	/*
	 * PF MSI-X vectors
	 *
	 * Entry 0: NPS PKT ring 0
	 * Entry 1: AQMQ ring 0
	 * Entry 2: ZQM ring 0
	 * Entry 3: NPS PKT ring 1
	 * Entry 4: AQMQ ring 1
	 * Entry 5: ZQM ring 1
	 * ....
	 * Entry 192: NPS_CORE_INT_ACTIVE
	 */
	nr_vecs = FUNC10(pdev);

	/* Enable MSI-X */
	ret = FUNC7(pdev, nr_vecs, nr_vecs, PCI_IRQ_MSIX);
	if (ret < 0) {
		FUNC1(FUNC0(ndev), "msix vectors %d alloc failed\n", nr_vecs);
		return ret;
	}
	ndev->num_vecs = nr_vecs;

	ndev->qvec = FUNC4(nr_vecs, sizeof(*qvec), GFP_KERNEL);
	if (!ndev->qvec) {
		FUNC8(pdev);
		return -ENOMEM;
	}

	/* request irqs for packet rings/ports */
	for (i = PKT_RING_MSIX_BASE; i < (nr_vecs - 1); i += NR_RING_VECTORS) {
		qvec = &ndev->qvec[i];

		qvec->ring = i / NR_RING_VECTORS;
		if (qvec->ring >= ndev->nr_queues)
			break;

		qvec->cmdq = &ndev->pkt_inq[qvec->ring];
		FUNC12(qvec->name, IRQ_NAMESZ, "nitrox-pkt%d", qvec->ring);
		/* get the vector number */
		vec = FUNC9(pdev, i);
		ret = FUNC11(vec, nps_pkt_slc_isr, 0, qvec->name, qvec);
		if (ret) {
			FUNC1(FUNC0(ndev), "irq failed for pkt ring/port%d\n",
				qvec->ring);
			goto irq_fail;
		}
		cpu = qvec->ring % FUNC6();
		FUNC3(vec, FUNC2(cpu));

		FUNC13(&qvec->resp_tasklet, pkt_slc_resp_tasklet,
			     (unsigned long)qvec);
		qvec->valid = true;
	}

	/* request irqs for non ring vectors */
	i = NON_RING_MSIX_BASE;
	qvec = &ndev->qvec[i];
	qvec->ndev = ndev;

	FUNC12(qvec->name, IRQ_NAMESZ, "nitrox-core-int%d", i);
	/* get the vector number */
	vec = FUNC9(pdev, i);
	ret = FUNC11(vec, nps_core_int_isr, 0, qvec->name, qvec);
	if (ret) {
		FUNC1(FUNC0(ndev), "irq failed for nitrox-core-int%d\n", i);
		goto irq_fail;
	}
	cpu = FUNC6();
	FUNC3(vec, FUNC2(cpu));

	FUNC13(&qvec->resp_tasklet, nps_core_int_tasklet,
		     (unsigned long)qvec);
	qvec->valid = true;

	return 0;

irq_fail:
	FUNC5(ndev);
	return ret;
}