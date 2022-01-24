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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct flexrm_mbox {int /*<<< orphan*/  bd_pool; int /*<<< orphan*/  cmpl_pool; int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct flexrm_mbox* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct flexrm_mbox *mbox = FUNC2(pdev);

	FUNC0(mbox->root);

	FUNC3(dev);

	FUNC1(mbox->cmpl_pool);
	FUNC1(mbox->bd_pool);

	return 0;
}