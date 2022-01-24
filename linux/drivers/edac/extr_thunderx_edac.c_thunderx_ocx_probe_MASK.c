#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct thunderx_ocx {scalar_t__ regs; int /*<<< orphan*/  debugfs; TYPE_2__* msix_ent; struct pci_dev* pdev; scalar_t__ link_ring_tail; scalar_t__ link_ring_head; scalar_t__ com_ring_tail; scalar_t__ com_ring_head; struct edac_device_ctl_info* edac_dev; } ;
struct pci_device_id {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_10__ {TYPE_1__ kobj; } ;
struct pci_dev {TYPE_3__ dev; } ;
struct edac_device_ctl_info {char* mod_name; char* ctl_name; int /*<<< orphan*/  dev_name; TYPE_3__* dev; struct thunderx_ocx* pvt_info; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_9__ {int entry; scalar_t__ vector; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONFIG_EDAC_DEBUG ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ OCX_COM_INT ; 
 int /*<<< orphan*/  OCX_COM_INT_ENA_ALL ; 
 scalar_t__ OCX_COM_INT_ENA_W1S ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  OCX_COM_LINKX_INT_ENA_ALL ; 
 scalar_t__ FUNC4 (int) ; 
 int OCX_INTS ; 
 int OCX_LINK_INTS ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  OCX_LNE_INT_ENA_ALL ; 
 int OCX_RX_LANES ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*,int,char*) ; 
 int FUNC10 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct edac_device_ctl_info*) ; 
 struct edac_device_ctl_info* FUNC13 (int,char*,int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct edac_device_ctl_info*) ; 
 int /*<<< orphan*/  ocx_dfs_ents ; 
 int FUNC16 (struct pci_dev*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,struct edac_device_ctl_info*) ; 
 int FUNC18 (struct pci_dev*) ; 
 int FUNC19 (struct pci_dev*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__* FUNC20 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (char*,int,char*,int) ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thunderx_ocx*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct thunderx_ocx*) ; 
 int /*<<< orphan*/  thunderx_ocx_com_isr ; 
 int /*<<< orphan*/  thunderx_ocx_com_threaded_isr ; 
 int /*<<< orphan*/  thunderx_ocx_lnk_isr ; 
 int /*<<< orphan*/  thunderx_ocx_lnk_threaded_isr ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC26(struct pci_dev *pdev,
			      const struct pci_device_id *id)
{
	struct thunderx_ocx *ocx;
	struct edac_device_ctl_info *edac_dev;
	char name[32];
	int idx;
	int i;
	int ret;
	u64 reg;

	ret = FUNC18(pdev);
	if (ret) {
		FUNC7(&pdev->dev, "Cannot enable PCI device: %d\n", ret);
		return ret;
	}

	ret = FUNC19(pdev, FUNC1(0), "thunderx_ocx");
	if (ret) {
		FUNC7(&pdev->dev, "Cannot map PCI resources: %d\n", ret);
		return ret;
	}

	idx = FUNC14();
	FUNC22(name, sizeof(name), "OCX%d", idx);
	edac_dev = FUNC13(sizeof(struct thunderx_ocx),
					      name, 1, "CCPI", 1,
					      0, NULL, 0, idx);
	if (!edac_dev) {
		FUNC7(&pdev->dev, "Cannot allocate EDAC device: %d\n", ret);
		return -ENOMEM;
	}
	ocx = edac_dev->pvt_info;
	ocx->edac_dev = edac_dev;
	ocx->com_ring_head = 0;
	ocx->com_ring_tail = 0;
	ocx->link_ring_head = 0;
	ocx->link_ring_tail = 0;

	ocx->regs = FUNC20(pdev)[0];
	if (!ocx->regs) {
		FUNC7(&pdev->dev, "Cannot map PCI resources: %d\n", ret);
		ret = -ENODEV;
		goto err_free;
	}

	ocx->pdev = pdev;

	for (i = 0; i < OCX_INTS; i++) {
		ocx->msix_ent[i].entry = i;
		ocx->msix_ent[i].vector = 0;
	}

	ret = FUNC16(pdev, ocx->msix_ent, OCX_INTS);
	if (ret) {
		FUNC7(&pdev->dev, "Cannot enable interrupt: %d\n", ret);
		goto err_free;
	}

	for (i = 0; i < OCX_INTS; i++) {
		ret = FUNC10(&pdev->dev,
						ocx->msix_ent[i].vector,
						(i == 3) ?
						 thunderx_ocx_com_isr :
						 thunderx_ocx_lnk_isr,
						(i == 3) ?
						 thunderx_ocx_com_threaded_isr :
						 thunderx_ocx_lnk_threaded_isr,
						0, "[EDAC] ThunderX OCX",
						&ocx->msix_ent[i]);
		if (ret)
			goto err_free;
	}

	edac_dev->dev = &pdev->dev;
	edac_dev->dev_name = FUNC8(&pdev->dev);
	edac_dev->mod_name = "thunderx-ocx";
	edac_dev->ctl_name = "thunderx-ocx";

	ret = FUNC12(edac_dev);
	if (ret) {
		FUNC7(&pdev->dev, "Cannot add EDAC device: %d\n", ret);
		goto err_free;
	}

	if (FUNC2(CONFIG_EDAC_DEBUG)) {
		ocx->debugfs = FUNC11(pdev->dev.kobj.name);

		ret = FUNC23(ocx->debugfs,
						    ocx_dfs_ents,
						    ocx,
						    FUNC0(ocx_dfs_ents));
		if (ret != FUNC0(ocx_dfs_ents)) {
			FUNC9(&pdev->dev, "Error creating debugfs entries: %d%s\n",
				 ret, ret >= 0 ? " created" : "");
		}
	}

	FUNC17(pdev, edac_dev);

	FUNC24(ocx);

	for (i = 0; i < OCX_RX_LANES; i++) {
		FUNC25(OCX_LNE_INT_ENA_ALL,
		       ocx->regs + FUNC6(i));

		reg = FUNC21(ocx->regs + FUNC5(i));
		FUNC25(reg, ocx->regs + FUNC5(i));

	}

	for (i = 0; i < OCX_LINK_INTS; i++) {
		reg = FUNC21(ocx->regs + FUNC3(i));
		FUNC25(reg, ocx->regs + FUNC3(i));

		FUNC25(OCX_COM_LINKX_INT_ENA_ALL,
		       ocx->regs + FUNC4(i));
	}

	reg = FUNC21(ocx->regs + OCX_COM_INT);
	FUNC25(reg, ocx->regs + OCX_COM_INT);

	FUNC25(OCX_COM_INT_ENA_ALL, ocx->regs + OCX_COM_INT_ENA_W1S);

	return 0;
err_free:
	FUNC15(edac_dev);

	return ret;
}