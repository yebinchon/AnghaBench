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
struct edac_pci_ctl_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  mod_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct edac_pci_ctl_info*) ; 

void FUNC3(struct edac_pci_ctl_info *pci)
{
	FUNC0(0, "pci mod=%s\n", pci->mod_name);

	FUNC1(pci->dev);
	FUNC2(pci);
}