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
struct dfl_fpga_cdev {int dummy; } ;
struct cci_drvdata {struct dfl_fpga_cdev* cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dfl_fpga_cdev*) ; 
 int FUNC1 (struct dfl_fpga_cdev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct pci_dev*,int) ; 
 struct cci_drvdata* FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *pcidev, int num_vfs)
{
	struct cci_drvdata *drvdata = FUNC4(pcidev);
	struct dfl_fpga_cdev *cdev = drvdata->cdev;
	int ret = 0;

	if (!num_vfs) {
		/*
		 * disable SRIOV and then put released ports back to default
		 * PF access mode.
		 */
		FUNC2(pcidev);

		FUNC0(cdev);

	} else {
		/*
		 * before enable SRIOV, put released ports into VF access mode
		 * first of all.
		 */
		ret = FUNC1(cdev, num_vfs);
		if (ret)
			return ret;

		ret = FUNC3(pcidev, num_vfs);
		if (ret)
			FUNC0(cdev);
	}

	return ret;
}