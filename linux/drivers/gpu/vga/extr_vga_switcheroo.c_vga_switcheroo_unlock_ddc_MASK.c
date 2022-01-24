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
typedef  enum vga_switcheroo_client_id { ____Placeholder_vga_switcheroo_client_id } vga_switcheroo_client_id ;
struct TYPE_4__ {int old_ddc_owner; int /*<<< orphan*/  mux_hw_lock; TYPE_1__* handler; } ;
struct TYPE_3__ {int (* get_client_id ) (struct pci_dev*) ;int (* switch_ddc ) (int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pci_dev*) ; 
 int FUNC4 (int) ; 
 TYPE_2__ vgasr_priv ; 

int FUNC5(struct pci_dev *pdev)
{
	enum vga_switcheroo_client_id id;
	int ret = vgasr_priv.old_ddc_owner;

	if (FUNC0(!FUNC1(&vgasr_priv.mux_hw_lock)))
		return -EINVAL;

	if (vgasr_priv.old_ddc_owner >= 0) {
		id = vgasr_priv.handler->get_client_id(pdev);
		if (vgasr_priv.old_ddc_owner != id)
			ret = vgasr_priv.handler->switch_ddc(
						     vgasr_priv.old_ddc_owner);
	}
	FUNC2(&vgasr_priv.mux_hw_lock);
	return ret;
}