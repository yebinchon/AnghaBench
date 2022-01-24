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
struct adf_accel_dev {int dummy; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADF_DEV_RESET_SYNC ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_RECOVERED ; 
 scalar_t__ FUNC0 (struct adf_accel_dev*,int /*<<< orphan*/ ) ; 
 struct adf_accel_dev* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static pci_ers_result_t FUNC3(struct pci_dev *pdev)
{
	struct adf_accel_dev *accel_dev = FUNC1(pdev);

	if (!accel_dev) {
		FUNC2("QAT: Can't find acceleration device\n");
		return PCI_ERS_RESULT_DISCONNECT;
	}
	if (FUNC0(accel_dev, ADF_DEV_RESET_SYNC))
		return PCI_ERS_RESULT_DISCONNECT;

	return PCI_ERS_RESULT_RECOVERED;
}