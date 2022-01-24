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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int dummy; } ;
struct fpga_manager {struct altera_cvp_conf* priv; } ;
struct altera_cvp_conf {scalar_t__ map; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVP_BAR ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int /*<<< orphan*/  PCI_COMMAND_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct fpga_manager*) ; 
 struct fpga_manager* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct fpga_manager *mgr = FUNC1(pdev);
	struct altera_cvp_conf *conf = mgr->priv;
	u16 cmd;

	FUNC0(mgr);
	if (conf->map)
		FUNC2(pdev, conf->map);
	FUNC4(pdev, CVP_BAR);
	FUNC3(pdev, PCI_COMMAND, &cmd);
	cmd &= ~PCI_COMMAND_MEMORY;
	FUNC5(pdev, PCI_COMMAND, cmd);
}