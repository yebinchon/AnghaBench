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
struct it821x_dev {int dummy; } ;
struct ide_host {struct it821x_dev* host_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct it821x_dev*) ; 
 struct ide_host* FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *dev)
{
	struct ide_host *host = FUNC2(dev);
	struct it821x_dev *itdevs = host->host_priv;

	FUNC0(dev);
	FUNC1(itdevs);
}