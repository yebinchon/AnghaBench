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
struct st7701 {int /*<<< orphan*/  backlight; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_DCS_SET_DISPLAY_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct st7701*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct st7701* FUNC2 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC3(struct drm_panel *panel)
{
	struct st7701 *st7701 = FUNC2(panel);

	FUNC1(st7701->backlight);
	FUNC0(st7701, MIPI_DCS_SET_DISPLAY_OFF, 0x00);

	return 0;
}