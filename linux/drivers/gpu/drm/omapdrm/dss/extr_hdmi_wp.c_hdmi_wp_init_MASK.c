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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct hdmi_wp_data {unsigned int version; int /*<<< orphan*/  phys_base; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct resource*) ; 
 struct resource* FUNC3 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 

int FUNC4(struct platform_device *pdev, struct hdmi_wp_data *wp,
		 unsigned int version)
{
	struct resource *res;

	res = FUNC3(pdev, IORESOURCE_MEM, "wp");
	wp->base = FUNC2(&pdev->dev, res);
	if (FUNC0(wp->base))
		return FUNC1(wp->base);

	wp->phys_base = res->start;
	wp->version = version;

	return 0;
}