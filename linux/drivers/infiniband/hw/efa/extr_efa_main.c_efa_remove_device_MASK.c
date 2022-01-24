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
struct efa_com_dev {int /*<<< orphan*/  reg_bar; } ;
struct efa_dev {int /*<<< orphan*/  ibdev; struct efa_com_dev edev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFA_BASE_BAR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct efa_com_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct efa_com_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct efa_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct efa_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct efa_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 struct efa_dev* FUNC8 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct efa_dev *dev = FUNC8(pdev);
	struct efa_com_dev *edev;

	edev = &dev->edev;
	FUNC1(edev);
	FUNC4(dev);
	FUNC3(dev);
	FUNC2(edev);
	FUNC0(&pdev->dev, edev->reg_bar);
	FUNC5(dev, EFA_BASE_BAR_MASK);
	FUNC6(&dev->ibdev);
	FUNC7(pdev);
}