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
struct pci_dev {int dummy; } ;
struct ide_info {int dummy; } ;
struct ide_host {scalar_t__* dev; struct ide_info* host_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct ide_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct ide_host* FUNC3 (struct pci_dev*) ; 
 struct pci_dev* FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *dev)
{
	struct ide_host *host = FUNC3(dev);
	struct ide_info *info = host->host_priv;
	struct pci_dev *dev2 = host->dev[1] ? FUNC4(host->dev[1]) : NULL;

	FUNC0(dev);
	FUNC2(dev2);
	FUNC1(info);
}