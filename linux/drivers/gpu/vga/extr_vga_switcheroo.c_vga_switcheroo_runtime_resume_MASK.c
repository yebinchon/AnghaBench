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
struct pci_dev {int /*<<< orphan*/  bus; } ;
struct device {TYPE_2__* bus; } ;
struct TYPE_4__ {TYPE_1__* pm; } ;
struct TYPE_3__ {int (* runtime_resume ) (struct device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  VGA_SWITCHEROO_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*) ; 
 struct pci_dev* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vgasr_mutex ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct pci_dev *pdev = FUNC4(dev);
	int ret;

	FUNC0(&vgasr_mutex);
	FUNC5(pdev, VGA_SWITCHEROO_ON);
	FUNC1(&vgasr_mutex);
	FUNC2(pdev->bus);
	ret = dev->bus->pm->runtime_resume(dev);
	if (ret)
		return ret;

	return 0;
}