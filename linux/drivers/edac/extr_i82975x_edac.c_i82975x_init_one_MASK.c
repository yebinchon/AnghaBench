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
struct pci_device_id {int /*<<< orphan*/  driver_data; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mci_pdev ; 
 int /*<<< orphan*/ * FUNC2 (struct pci_dev*) ; 
 scalar_t__ FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *pdev,
			    const struct pci_device_id *ent)
{
	int rc;

	FUNC0(0, "\n");

	if (FUNC3(pdev) < 0)
		return -EIO;

	rc = FUNC1(pdev, ent->driver_data);

	if (mci_pdev == NULL)
		mci_pdev = FUNC2(pdev);

	return rc;
}