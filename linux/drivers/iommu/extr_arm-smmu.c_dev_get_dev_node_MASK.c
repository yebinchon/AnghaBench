#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pci_bus {TYPE_2__* bridge; struct pci_bus* parent; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct TYPE_6__ {struct pci_bus* bus; } ;
struct TYPE_5__ {TYPE_1__* parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_bus*) ; 
 TYPE_3__* FUNC3 (struct device*) ; 

__attribute__((used)) static struct device_node *FUNC4(struct device *dev)
{
	if (FUNC0(dev)) {
		struct pci_bus *bus = FUNC3(dev)->bus;

		while (!FUNC2(bus))
			bus = bus->parent;
		return FUNC1(bus->bridge->parent->of_node);
	}

	return FUNC1(dev->of_node);
}