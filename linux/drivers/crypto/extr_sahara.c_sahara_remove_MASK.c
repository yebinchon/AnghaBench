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
struct sahara_dev {int /*<<< orphan*/  clk_ahb; int /*<<< orphan*/  clk_ipg; int /*<<< orphan*/  kthread; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * dev_ptr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sahara_dev* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sahara_dev*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct sahara_dev *dev = FUNC2(pdev);

	FUNC1(dev->kthread);

	FUNC3(dev);

	FUNC0(dev->clk_ipg);
	FUNC0(dev->clk_ahb);

	dev_ptr = NULL;

	return 0;
}