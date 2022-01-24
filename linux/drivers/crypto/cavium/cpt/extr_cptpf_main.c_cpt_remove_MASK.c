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
struct cpt_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpt_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpt_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpt_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct cpt_device* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct cpt_device *cpt = FUNC5(pdev);

	/* Disengage SE and AE cores from all groups*/
	FUNC0(cpt);
	/* Unload microcodes */
	FUNC1(cpt);
	FUNC2(cpt);
	FUNC4(pdev);
	FUNC6(pdev);
	FUNC3(pdev);
	FUNC7(pdev, NULL);
}