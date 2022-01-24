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
struct s6e63m0 {int enabled; int /*<<< orphan*/  bl_dev; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_DCS_ENTER_SLEEP_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct s6e63m0* FUNC2 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC3 (struct s6e63m0*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct drm_panel *panel)
{
	struct s6e63m0 *ctx = FUNC2(panel);

	if (!ctx->enabled)
		return 0;

	FUNC0(ctx->bl_dev);

	FUNC3(ctx, MIPI_DCS_ENTER_SLEEP_MODE);
	FUNC1(200);

	ctx->enabled = false;

	return 0;
}