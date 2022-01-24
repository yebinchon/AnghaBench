#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  bus; } ;
struct device {TYPE_2__* bus; } ;
struct TYPE_8__ {int /*<<< orphan*/  mux_hw_lock; TYPE_3__* handler; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* switchto ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {TYPE_1__* pm; } ;
struct TYPE_5__ {int (* runtime_suspend ) (struct device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_D3cold ; 
 int /*<<< orphan*/  VGA_SWITCHEROO_IGD ; 
 int /*<<< orphan*/  VGA_SWITCHEROO_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vgasr_mutex ; 
 TYPE_4__ vgasr_priv ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct pci_dev *pdev = FUNC5(dev);
	int ret;

	ret = dev->bus->pm->runtime_suspend(dev);
	if (ret)
		return ret;
	FUNC0(&vgasr_mutex);
	if (vgasr_priv.handler->switchto) {
		FUNC0(&vgasr_priv.mux_hw_lock);
		vgasr_priv.handler->switchto(VGA_SWITCHEROO_IGD);
		FUNC1(&vgasr_priv.mux_hw_lock);
	}
	FUNC2(pdev->bus, PCI_D3cold);
	FUNC6(pdev, VGA_SWITCHEROO_OFF);
	FUNC1(&vgasr_mutex);
	return 0;
}