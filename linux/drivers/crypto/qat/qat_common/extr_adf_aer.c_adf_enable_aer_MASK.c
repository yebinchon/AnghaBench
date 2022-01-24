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
struct pci_driver {int /*<<< orphan*/ * err_handler; } ;
struct pci_dev {int dummy; } ;
struct adf_accel_dev {int dummy; } ;

/* Variables and functions */
 struct pci_dev* FUNC0 (struct adf_accel_dev*) ; 
 int /*<<< orphan*/  adf_err_handler ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 

int FUNC2(struct adf_accel_dev *accel_dev, struct pci_driver *adf)
{
	struct pci_dev *pdev = FUNC0(accel_dev);

	adf->err_handler = &adf_err_handler;
	FUNC1(pdev);
	return 0;
}