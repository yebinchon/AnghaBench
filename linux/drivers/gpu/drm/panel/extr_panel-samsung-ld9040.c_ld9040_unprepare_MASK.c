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
struct ld9040 {int dummy; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_DCS_ENTER_SLEEP_MODE ; 
 int /*<<< orphan*/  MIPI_DCS_SET_DISPLAY_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct ld9040*) ; 
 int /*<<< orphan*/  FUNC1 (struct ld9040*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ld9040*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct ld9040* FUNC4 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC5(struct drm_panel *panel)
{
	struct ld9040 *ctx = FUNC4(panel);

	FUNC3(120);
	FUNC1(ctx, MIPI_DCS_SET_DISPLAY_OFF);
	FUNC1(ctx, MIPI_DCS_ENTER_SLEEP_MODE);
	FUNC3(40);

	FUNC0(ctx);

	return FUNC2(ctx);
}