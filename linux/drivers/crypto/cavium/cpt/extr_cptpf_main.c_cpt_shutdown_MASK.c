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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {scalar_t__ device; scalar_t__ vendor; int /*<<< orphan*/  dev; } ;
struct cpt_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpt_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct cpt_device* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct cpt_device *cpt = FUNC3(pdev);

	if (!cpt)
		return;

	FUNC1(&pdev->dev, "Shutdown device %x:%x.\n",
		 (u32)pdev->vendor, (u32)pdev->device);

	FUNC0(cpt);
	FUNC4(pdev);
	FUNC2(pdev);
	FUNC5(pdev, NULL);
}