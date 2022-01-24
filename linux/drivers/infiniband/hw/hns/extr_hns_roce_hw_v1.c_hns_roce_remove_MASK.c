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
struct hns_roce_dev {int /*<<< orphan*/  ib_dev; int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hns_roce_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct hns_roce_dev* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct hns_roce_dev *hr_dev = FUNC3(pdev);

	FUNC0(hr_dev);
	FUNC2(hr_dev->priv);
	FUNC1(&hr_dev->ib_dev);

	return 0;
}