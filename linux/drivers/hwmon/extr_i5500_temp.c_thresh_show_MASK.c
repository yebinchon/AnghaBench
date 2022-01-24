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
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,long) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			   struct device_attribute *devattr, char *buf)
{
	struct pci_dev *pdev = FUNC2(dev->parent);
	int reg = FUNC3(devattr)->index;
	long temp;
	u16 tsthr;

	FUNC0(pdev, reg, &tsthr);
	temp = tsthr * 500;

	return FUNC1(buf, "%ld\n", temp);
}