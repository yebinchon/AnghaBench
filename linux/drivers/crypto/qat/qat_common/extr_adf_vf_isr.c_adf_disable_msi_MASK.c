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
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq_name; } ;
struct adf_accel_dev {TYPE_1__ vf; } ;

/* Variables and functions */
 struct pci_dev* FUNC0 (struct adf_accel_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC3(struct adf_accel_dev *accel_dev)
{
	struct pci_dev *pdev = FUNC0(accel_dev);

	FUNC1(accel_dev->vf.irq_name);
	FUNC2(pdev);
}