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
struct platform_device {int dummy; } ;
struct da9052_tsi {int /*<<< orphan*/  dev; int /*<<< orphan*/  da9052; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9052_IRQ_PENDOWN ; 
 int /*<<< orphan*/  DA9052_IRQ_TSIREADY ; 
 int /*<<< orphan*/  DA9052_LDO9_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct da9052_tsi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct da9052_tsi*) ; 
 struct da9052_tsi* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int  FUNC5(struct platform_device *pdev)
{
	struct da9052_tsi *tsi = FUNC4(pdev);

	FUNC1(tsi->da9052, DA9052_LDO9_REG, 0x19);

	FUNC0(tsi->da9052, DA9052_IRQ_TSIREADY, tsi);
	FUNC0(tsi->da9052, DA9052_IRQ_PENDOWN, tsi);

	FUNC2(tsi->dev);
	FUNC3(tsi);

	return 0;
}