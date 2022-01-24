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
struct usnic_vnic {TYPE_1__* bar; int /*<<< orphan*/  vdev; int /*<<< orphan*/ * chunks; } ;
struct pci_dev {int dummy; } ;
typedef  enum usnic_vnic_res_type { ____Placeholder_usnic_vnic_res_type } usnic_vnic_res_type ;
struct TYPE_2__ {int /*<<< orphan*/  vaddr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int IORESOURCE_MEM ; 
 int USNIC_VNIC_RES_TYPE_EOL ; 
 int USNIC_VNIC_RES_TYPE_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct pci_dev* FUNC4 (struct usnic_vnic*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct usnic_vnic *vnic)
{
	int i;
	struct pci_dev *pdev;
	enum usnic_vnic_res_type res_type;

	pdev = FUNC4(vnic);

	for (res_type = USNIC_VNIC_RES_TYPE_EOL + 1;
			res_type < USNIC_VNIC_RES_TYPE_MAX; res_type++)
		FUNC3(&vnic->chunks[res_type]);

	FUNC5(vnic->vdev);

	for (i = 0; i < FUNC0(vnic->bar); i++) {
		if (!(FUNC2(pdev, i) & IORESOURCE_MEM))
			continue;
		FUNC1(vnic->bar[i].vaddr);
	}
}