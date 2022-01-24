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
 int FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC3(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	FUNC1(0, "\n");

	/* wake up and enable device */
	return FUNC2(pdev) ?
		-EIO : FUNC0(pdev, ent->driver_data);
}