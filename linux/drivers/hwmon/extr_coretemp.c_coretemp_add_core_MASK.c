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
 scalar_t__ FUNC0 (struct platform_device*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int) ; 

__attribute__((used)) static void
FUNC2(struct platform_device *pdev, unsigned int cpu, int pkg_flag)
{
	if (FUNC0(pdev, cpu, pkg_flag))
		FUNC1(&pdev->dev, "Adding Core %u failed\n", cpu);
}