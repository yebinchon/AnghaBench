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
struct ili9881c {int /*<<< orphan*/  reset; int /*<<< orphan*/  power; int /*<<< orphan*/  dsi; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ili9881c* FUNC2 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct drm_panel *panel)
{
	struct ili9881c *ctx = FUNC2(panel);

	FUNC1(ctx->dsi);
	FUNC3(ctx->power);
	FUNC0(ctx->reset, 1);

	return 0;
}