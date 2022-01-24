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
struct tilcdc_module {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct panel_module {int /*<<< orphan*/  info; int /*<<< orphan*/  timings; struct backlight_device* backlight; } ;
struct backlight_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct tilcdc_module* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tilcdc_module*) ; 
 struct panel_module* FUNC5 (struct tilcdc_module*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct tilcdc_module *mod = FUNC0(&pdev->dev);
	struct panel_module *panel_mod = FUNC5(mod);
	struct backlight_device *backlight = panel_mod->backlight;

	if (backlight)
		FUNC3(&backlight->dev);

	FUNC1(panel_mod->timings);

	FUNC4(mod);
	FUNC2(panel_mod->info);

	return 0;
}