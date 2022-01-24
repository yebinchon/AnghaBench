#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_dev_auxdata {int dummy; } ;

/* Variables and functions */
 struct of_dev_auxdata* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct platform_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct of_dev_auxdata const*,TYPE_1__*) ; 
 int /*<<< orphan*/  shdma_of_xlate ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	const struct of_dev_auxdata *lookup = FUNC0(&pdev->dev);
	int ret;

	ret = FUNC2(pdev->dev.of_node,
					 shdma_of_xlate, pdev);
	if (ret < 0)
		return ret;

	ret = FUNC3(pdev->dev.of_node, NULL, lookup, &pdev->dev);
	if (ret < 0)
		FUNC1(pdev->dev.of_node);

	return ret;
}