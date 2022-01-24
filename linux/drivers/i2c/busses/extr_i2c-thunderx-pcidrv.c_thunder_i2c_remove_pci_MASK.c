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
struct octeon_i2c {int /*<<< orphan*/  adap; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct octeon_i2c* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_i2c*) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev)
{
	struct octeon_i2c *i2c = FUNC1(pdev);

	FUNC3(i2c);
	FUNC2(&pdev->dev, i2c->clk);
	FUNC0(&i2c->adap);
}