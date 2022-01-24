#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct panel_lvds {TYPE_1__* backlight; int /*<<< orphan*/  panel; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct panel_lvds* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct panel_lvds *lvds = FUNC0(&pdev->dev);

	FUNC1(&lvds->panel);

	FUNC2(&lvds->panel);

	if (lvds->backlight)
		FUNC3(&lvds->backlight->dev);

	return 0;
}