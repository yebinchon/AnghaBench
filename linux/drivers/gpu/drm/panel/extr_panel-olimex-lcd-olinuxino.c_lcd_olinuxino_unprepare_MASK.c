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
struct lcd_olinuxino {int prepared; int /*<<< orphan*/  supply; int /*<<< orphan*/  enable_gpio; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct lcd_olinuxino* FUNC2 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC3(struct drm_panel *panel)
{
	struct lcd_olinuxino *lcd = FUNC2(panel);

	if (!lcd->prepared)
		return 0;

	FUNC0(lcd->enable_gpio, 0);
	FUNC1(lcd->supply);

	lcd->prepared = false;

	return 0;
}