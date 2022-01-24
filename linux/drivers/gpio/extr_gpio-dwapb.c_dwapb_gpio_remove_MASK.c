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
struct dwapb_gpio {int /*<<< orphan*/  clk; int /*<<< orphan*/  rst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dwapb_gpio*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwapb_gpio*) ; 
 struct dwapb_gpio* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct dwapb_gpio *gpio = FUNC3(pdev);

	FUNC1(gpio);
	FUNC2(gpio);
	FUNC4(gpio->rst);
	FUNC0(gpio->clk);

	return 0;
}