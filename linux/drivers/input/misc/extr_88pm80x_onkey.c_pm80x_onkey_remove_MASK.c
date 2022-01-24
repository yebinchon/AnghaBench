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
struct pm80x_onkey_info {int /*<<< orphan*/  idev; int /*<<< orphan*/  irq; int /*<<< orphan*/  pm80x; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pm80x_onkey_info*) ; 
 struct pm80x_onkey_info* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pm80x_onkey_info*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct pm80x_onkey_info *info = FUNC2(pdev);

	FUNC3(info->pm80x, info->irq, info);
	FUNC0(info->idev);
	FUNC1(info);
	return 0;
}