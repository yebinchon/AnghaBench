#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  of_node; TYPE_1__* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct mvebu_gpio_chip {int /*<<< orphan*/  offset; int /*<<< orphan*/  regs; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev,
				   struct mvebu_gpio_chip *mvchip)
{
	mvchip->regs = FUNC3(pdev->dev.parent->of_node);
	if (FUNC0(mvchip->regs))
		return FUNC1(mvchip->regs);

	if (FUNC2(pdev->dev.of_node, "offset", &mvchip->offset))
		return -EINVAL;

	return 0;
}