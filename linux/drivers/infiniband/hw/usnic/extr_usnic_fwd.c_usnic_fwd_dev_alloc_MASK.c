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
struct usnic_fwd_dev {TYPE_1__* netdev; int /*<<< orphan*/  name; int /*<<< orphan*/  lock; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct usnic_fwd_dev* FUNC1 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct usnic_fwd_dev *FUNC5(struct pci_dev *pdev)
{
	struct usnic_fwd_dev *ufdev;

	ufdev = FUNC1(sizeof(*ufdev), GFP_KERNEL);
	if (!ufdev)
		return NULL;

	ufdev->pdev = pdev;
	ufdev->netdev = FUNC2(pdev);
	FUNC3(&ufdev->lock);
	FUNC0(sizeof(ufdev->name) != sizeof(ufdev->netdev->name));
	FUNC4(ufdev->name, ufdev->netdev->name);

	return ufdev;
}