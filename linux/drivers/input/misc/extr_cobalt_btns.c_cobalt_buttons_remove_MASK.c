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
struct buttons_dev {int /*<<< orphan*/  reg; int /*<<< orphan*/  poll_dev; } ;

/* Variables and functions */
 struct buttons_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buttons_dev*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct buttons_dev *bdev = FUNC0(dev);

	FUNC2(bdev->poll_dev);
	FUNC1(bdev->poll_dev);
	FUNC3(bdev->reg);
	FUNC4(bdev);

	return 0;
}