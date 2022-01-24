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
struct td028ttec1_panel {int /*<<< orphan*/  backlight; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  JBT_REG_DISPLAY_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct td028ttec1_panel*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct td028ttec1_panel* FUNC2 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC3(struct drm_panel *panel)
{
	struct td028ttec1_panel *lcd = FUNC2(panel);
	int ret;

	ret = FUNC1(lcd, JBT_REG_DISPLAY_ON, NULL);
	if (ret)
		return ret;

	FUNC0(lcd->backlight);

	return 0;
}