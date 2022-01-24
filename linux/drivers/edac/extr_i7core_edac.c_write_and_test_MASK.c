#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ const u32 ;
struct pci_dev {int /*<<< orphan*/  devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,scalar_t__ const,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int const,scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int const,scalar_t__ const) ; 

__attribute__((used)) static int FUNC7(struct pci_dev *dev, const int where, const u32 val)
{
	u32 read;
	int count;

	FUNC2(0, "setting pci %02x:%02x.%x reg=%02x value=%08x\n",
		 dev->bus->number, FUNC1(dev->devfn), FUNC0(dev->devfn),
		 where, val);

	for (count = 0; count < 10; count++) {
		if (count)
			FUNC4(100);
		FUNC6(dev, where, val);
		FUNC5(dev, where, &read);

		if (read == val)
			return 0;
	}

	FUNC3(KERN_ERR, "Error during set pci %02x:%02x.%x reg=%02x "
		"write=%08x. Read=%08x\n",
		dev->bus->number, FUNC1(dev->devfn), FUNC0(dev->devfn),
		where, val, read);

	return -EINVAL;
}