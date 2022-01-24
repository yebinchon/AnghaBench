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
struct omap_hdmi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hdmi5_component_ops ; 
 int /*<<< orphan*/  FUNC1 (struct omap_hdmi*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_hdmi*) ; 
 struct omap_hdmi* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct omap_hdmi *hdmi = FUNC3(pdev);

	FUNC0(&pdev->dev, &hdmi5_component_ops);

	FUNC1(hdmi);

	FUNC4(&pdev->dev);

	FUNC2(hdmi);
	return 0;
}