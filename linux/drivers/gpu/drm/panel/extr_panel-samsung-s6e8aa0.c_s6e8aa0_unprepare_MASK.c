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
struct s6e8aa0 {int dummy; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_DCS_ENTER_SLEEP_MODE ; 
 int /*<<< orphan*/  MIPI_DCS_SET_DISPLAY_OFF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct s6e8aa0* FUNC1 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC2 (struct s6e8aa0*) ; 
 int /*<<< orphan*/  FUNC3 (struct s6e8aa0*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct s6e8aa0*) ; 

__attribute__((used)) static int FUNC5(struct drm_panel *panel)
{
	struct s6e8aa0 *ctx = FUNC1(panel);

	FUNC3(ctx, MIPI_DCS_ENTER_SLEEP_MODE);
	FUNC3(ctx, MIPI_DCS_SET_DISPLAY_OFF);
	FUNC0(40);

	FUNC2(ctx);

	return FUNC4(ctx);
}