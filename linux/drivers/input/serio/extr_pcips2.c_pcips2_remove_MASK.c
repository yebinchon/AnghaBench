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
struct pcips2_data {int /*<<< orphan*/  io; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcips2_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct pcips2_data* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *dev)
{
	struct pcips2_data *ps2if = FUNC2(dev);

	FUNC4(ps2if->io);
	FUNC0(ps2if);
	FUNC3(dev);
	FUNC1(dev);
}