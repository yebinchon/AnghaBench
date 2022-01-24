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
struct dw_i2c_dev {int /*<<< orphan*/  adapter; int /*<<< orphan*/  (* disable ) (struct dw_i2c_dev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 struct dw_i2c_dev* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dw_i2c_dev*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct dw_i2c_dev *dev = FUNC2(pdev);

	dev->disable(dev);
	FUNC3(&pdev->dev);
	FUNC4(&pdev->dev);

	FUNC0(&dev->adapter);
	FUNC1(pdev);
}