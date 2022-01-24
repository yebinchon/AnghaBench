#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sp_device {struct device* dev; } ;
struct pci_dev {int /*<<< orphan*/  devfn; TYPE_1__* bus; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device* dev; } ;
struct TYPE_3__ {scalar_t__ number; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* sp_dev_master ; 
 struct pci_dev* FUNC2 (struct device*) ; 

__attribute__((used)) static bool FUNC3(struct sp_device *sp)
{
	struct device *dev_cur, *dev_new;
	struct pci_dev *pdev_cur, *pdev_new;

	dev_new = sp->dev;
	dev_cur = sp_dev_master->dev;

	pdev_new = FUNC2(dev_new);
	pdev_cur = FUNC2(dev_cur);

	if (pdev_new->bus->number < pdev_cur->bus->number)
		return true;

	if (FUNC1(pdev_new->devfn) < FUNC1(pdev_cur->devfn))
		return true;

	if (FUNC0(pdev_new->devfn) < FUNC0(pdev_cur->devfn))
		return true;

	return false;
}