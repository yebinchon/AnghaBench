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
struct thunderx_ocx {int /*<<< orphan*/  debugfs; scalar_t__ regs; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct edac_device_ctl_info {struct thunderx_ocx* pvt_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCX_COM_INT_ENA_ALL ; 
 scalar_t__ OCX_COM_INT_ENA_W1C ; 
 int /*<<< orphan*/  OCX_COM_LINKX_INT_ENA_ALL ; 
 scalar_t__ FUNC0 (int) ; 
 int OCX_INTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct edac_device_ctl_info*) ; 
 struct edac_device_ctl_info* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct edac_device_ctl_info *edac_dev = FUNC4(pdev);
	struct thunderx_ocx *ocx = edac_dev->pvt_info;
	int i;

	FUNC5(OCX_COM_INT_ENA_ALL, ocx->regs + OCX_COM_INT_ENA_W1C);

	for (i = 0; i < OCX_INTS; i++) {
		FUNC5(OCX_COM_LINKX_INT_ENA_ALL,
		       ocx->regs + FUNC0(i));
	}

	FUNC1(ocx->debugfs);

	FUNC2(&pdev->dev);
	FUNC3(edac_dev);
}