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
struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {struct device dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  qchunksize; } ;
struct cpt_vf {int vfgrp; int priority; struct pci_dev* pdev; TYPE_1__ cqinfo; int /*<<< orphan*/  node; int /*<<< orphan*/  reg_base; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPT_CMD_QCHUNK_SIZE ; 
 int /*<<< orphan*/  CPT_CMD_QLEN ; 
 int /*<<< orphan*/  CPT_FLAG_VF_DRIVER ; 
 int /*<<< orphan*/  CPT_NUM_QS_PER_VF ; 
 int /*<<< orphan*/  CPT_VF_INT_VEC_E_DONE ; 
 int /*<<< orphan*/  CPT_VF_INT_VEC_E_MISC ; 
 int /*<<< orphan*/  CPT_VF_MSIX_VECTORS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCI_IRQ_MSIX ; 
 int FUNC1 (struct cpt_vf*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpt_vf*) ; 
 int /*<<< orphan*/  cptvf_done_intr_handler ; 
 int /*<<< orphan*/  FUNC3 (struct cpt_vf*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpt_vf*) ; 
 int /*<<< orphan*/  FUNC5 (struct cpt_vf*) ; 
 int /*<<< orphan*/  FUNC6 (struct cpt_vf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cptvf_misc_intr_handler ; 
 int FUNC7 (struct cpt_vf*) ; 
 int FUNC8 (struct cpt_vf*) ; 
 int FUNC9 (struct cpt_vf*) ; 
 int FUNC10 (struct cpt_vf*) ; 
 int /*<<< orphan*/  FUNC11 (struct cpt_vf*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct cpt_vf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct cpt_vf*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 struct cpt_vf* FUNC16 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct cpt_vf*) ; 
 int FUNC18 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*) ; 
 int FUNC20 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC21 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*) ; 
 int FUNC24 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC25 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC26 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct pci_dev*,struct cpt_vf*) ; 
 int /*<<< orphan*/  FUNC28 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct cpt_vf*) ; 

__attribute__((used)) static int FUNC30(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct device *dev = &pdev->dev;
	struct cpt_vf *cptvf;
	int    err;

	cptvf = FUNC16(dev, sizeof(*cptvf), GFP_KERNEL);
	if (!cptvf)
		return -ENOMEM;

	FUNC27(pdev, cptvf);
	cptvf->pdev = pdev;
	err = FUNC20(pdev);
	if (err) {
		FUNC14(dev, "Failed to enable PCI device\n");
		FUNC27(pdev, NULL);
		return err;
	}

	err = FUNC24(pdev, DRV_NAME);
	if (err) {
		FUNC14(dev, "PCI request regions failed 0x%x\n", err);
		goto cptvf_err_disable_device;
	}
	/* Mark as VF driver */
	cptvf->flags |= CPT_FLAG_VF_DRIVER;
	err = FUNC26(pdev, FUNC0(48));
	if (err) {
		FUNC14(dev, "Unable to get usable DMA configuration\n");
		goto cptvf_err_release_regions;
	}

	err = FUNC25(pdev, FUNC0(48));
	if (err) {
		FUNC14(dev, "Unable to get 48-bit DMA for consistent allocations\n");
		goto cptvf_err_release_regions;
	}

	/* MAP PF's configuration registers */
	cptvf->reg_base = FUNC28(pdev, 0, 0);
	if (!cptvf->reg_base) {
		FUNC14(dev, "Cannot map config register space, aborting\n");
		err = -ENOMEM;
		goto cptvf_err_release_regions;
	}

	cptvf->node = FUNC15(&pdev->dev);
	err = FUNC18(pdev, CPT_VF_MSIX_VECTORS,
			CPT_VF_MSIX_VECTORS, PCI_IRQ_MSIX);
	if (err < 0) {
		FUNC14(dev, "Request for #%d msix vectors failed\n",
			CPT_VF_MSIX_VECTORS);
		goto cptvf_err_release_regions;
	}

	err = FUNC29(FUNC22(pdev, CPT_VF_INT_VEC_E_MISC),
			  cptvf_misc_intr_handler, 0, "CPT VF misc intr",
			  cptvf);
	if (err) {
		FUNC14(dev, "Request misc irq failed");
		goto cptvf_free_vectors;
	}

	/* Enable mailbox interrupt */
	FUNC4(cptvf);
	FUNC5(cptvf);

	/* Check ready with PF */
	/* Gets chip ID / device Id from PF if ready */
	err = FUNC1(cptvf);
	if (err) {
		FUNC14(dev, "PF not responding to READY msg");
		goto cptvf_free_misc_irq;
	}

	/* CPT VF software resources initialization */
	cptvf->cqinfo.qchunksize = CPT_CMD_QCHUNK_SIZE;
	err = FUNC12(cptvf, CPT_CMD_QLEN, CPT_NUM_QS_PER_VF);
	if (err) {
		FUNC14(dev, "cptvf_sw_init() failed");
		goto cptvf_free_misc_irq;
	}
	/* Convey VQ LEN to PF */
	err = FUNC10(cptvf);
	if (err) {
		FUNC14(dev, "PF not responding to QLEN msg");
		goto cptvf_free_misc_irq;
	}

	/* CPT VF device initialization */
	FUNC2(cptvf);
	/* Send msg to PF to assign currnet Q to required group */
	cptvf->vfgrp = 1;
	err = FUNC8(cptvf);
	if (err) {
		FUNC14(dev, "PF not responding to VF_GRP msg");
		goto cptvf_free_misc_irq;
	}

	cptvf->priority = 1;
	err = FUNC7(cptvf);
	if (err) {
		FUNC14(dev, "PF not responding to VF_PRIO msg");
		goto cptvf_free_misc_irq;
	}

	err = FUNC29(FUNC22(pdev, CPT_VF_INT_VEC_E_DONE),
			  cptvf_done_intr_handler, 0, "CPT VF done intr",
			  cptvf);
	if (err) {
		FUNC14(dev, "Request done irq failed\n");
		goto cptvf_free_misc_irq;
	}

	/* Enable mailbox interrupt */
	FUNC3(cptvf);

	/* Set irq affinity masks */
	FUNC11(cptvf, CPT_VF_INT_VEC_E_MISC);
	FUNC11(cptvf, CPT_VF_INT_VEC_E_DONE);

	err = FUNC9(cptvf);
	if (err) {
		FUNC14(dev, "PF not responding to UP msg");
		goto cptvf_free_irq_affinity;
	}
	err = FUNC13(cptvf);
	if (err) {
		FUNC14(dev, "Algorithm register failed\n");
		goto cptvf_free_irq_affinity;
	}
	return 0;

cptvf_free_irq_affinity:
	FUNC6(cptvf, CPT_VF_INT_VEC_E_DONE);
	FUNC6(cptvf, CPT_VF_INT_VEC_E_MISC);
cptvf_free_misc_irq:
	FUNC17(FUNC22(pdev, CPT_VF_INT_VEC_E_MISC), cptvf);
cptvf_free_vectors:
	FUNC21(cptvf->pdev);
cptvf_err_release_regions:
	FUNC23(pdev);
cptvf_err_disable_device:
	FUNC19(pdev);
	FUNC27(pdev, NULL);

	return err;
}