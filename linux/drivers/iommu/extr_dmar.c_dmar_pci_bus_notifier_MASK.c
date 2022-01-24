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
struct pci_dev {scalar_t__ is_virtfn; } ;
struct notifier_block {int dummy; } ;
struct dmar_pci_notify_info {int dummy; } ;

/* Variables and functions */
 unsigned long BUS_NOTIFY_ADD_DEVICE ; 
 unsigned long BUS_NOTIFY_REMOVED_DEVICE ; 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
 struct dmar_pci_notify_info* FUNC0 (struct pci_dev*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_pci_notify_info*) ; 
 int /*<<< orphan*/  dmar_global_lock ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_pci_notify_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_pci_notify_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct pci_dev* FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct notifier_block *nb,
				 unsigned long action, void *data)
{
	struct pci_dev *pdev = FUNC5(data);
	struct dmar_pci_notify_info *info;

	/* Only care about add/remove events for physical functions.
	 * For VFs we actually do the lookup based on the corresponding
	 * PF in device_to_iommu() anyway. */
	if (pdev->is_virtfn)
		return NOTIFY_DONE;
	if (action != BUS_NOTIFY_ADD_DEVICE &&
	    action != BUS_NOTIFY_REMOVED_DEVICE)
		return NOTIFY_DONE;

	info = FUNC0(pdev, action);
	if (!info)
		return NOTIFY_DONE;

	FUNC4(&dmar_global_lock);
	if (action == BUS_NOTIFY_ADD_DEVICE)
		FUNC2(info);
	else if (action == BUS_NOTIFY_REMOVED_DEVICE)
		FUNC3(info);
	FUNC6(&dmar_global_lock);

	FUNC1(info);

	return NOTIFY_OK;
}