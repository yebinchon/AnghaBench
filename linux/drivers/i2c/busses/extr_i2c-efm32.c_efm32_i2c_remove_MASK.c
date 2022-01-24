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
struct efm32_i2c_ddata {int /*<<< orphan*/  clk; int /*<<< orphan*/  irq; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct efm32_i2c_ddata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct efm32_i2c_ddata* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct efm32_i2c_ddata *ddata = FUNC3(pdev);

	FUNC2(&ddata->adapter);
	FUNC1(ddata->irq, ddata);
	FUNC0(ddata->clk);

	return 0;
}