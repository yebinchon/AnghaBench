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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*) ; 
 struct i2c_adapter* FUNC1 (struct platform_device*) ; 
 struct resource* FUNC2 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct i2c_adapter *adapter = FUNC1(pdev);
	struct resource *mem;

	FUNC0(adapter);

	FUNC3(&pdev->dev);

	mem = FUNC2(pdev, IORESOURCE_MEM, 0);
	FUNC4(mem->start, FUNC5(mem));

	return 0;
}