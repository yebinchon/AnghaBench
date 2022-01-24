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
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hp6xx_green_led ; 
 int /*<<< orphan*/  hp6xx_red_led ; 

__attribute__((used)) static int FUNC1(struct platform_device *pdev)
{
	int ret;

	ret = FUNC0(&pdev->dev, &hp6xx_red_led);
	if (ret < 0)
		return ret;

	return FUNC0(&pdev->dev, &hp6xx_green_led);
}