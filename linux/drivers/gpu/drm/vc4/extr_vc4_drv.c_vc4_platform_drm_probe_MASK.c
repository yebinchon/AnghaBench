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
struct component_match {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  component_drivers ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ *,struct component_match*) ; 
 int /*<<< orphan*/  vc4_drm_ops ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct component_match**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct component_match *match = NULL;
	struct device *dev = &pdev->dev;

	FUNC2(dev, &match,
			      component_drivers, FUNC0(component_drivers));

	return FUNC1(dev, &vc4_drm_ops, match);
}