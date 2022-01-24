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

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 scalar_t__ FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *pdev)
{
	int pos = 0;

	pos = FUNC2(pdev);
	if (pos) {
		FUNC0(&pdev->dev, "Failed to save pci state\n");
		return -ENOMEM;
	}

	/* check flr support */
	if (FUNC4(pdev))
		FUNC3(pdev);

	FUNC1(pdev);

	return 0;
}