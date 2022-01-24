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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hisi_zip {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct hisi_zip*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct hisi_zip* FUNC3 (struct pci_dev*) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *pdev)
{
	struct hisi_zip *hisi_zip = FUNC3(pdev);

	if (FUNC4(pdev)) {
		FUNC0(&pdev->dev,
			"Can't disable VFs while VFs are assigned!\n");
		return -EPERM;
	}

	/* remove in hisi_zip_pci_driver will be called to free VF resources */
	FUNC2(pdev);

	return FUNC1(hisi_zip);
}