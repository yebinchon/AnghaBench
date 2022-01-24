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
struct rb070d30_panel {int /*<<< orphan*/  dsi; int /*<<< orphan*/  backlight; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct rb070d30_panel* FUNC3 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC4(struct drm_panel *panel)
{
	struct rb070d30_panel *ctx = FUNC3(panel);
	int ret;

	ret = FUNC2(ctx->dsi);
	if (ret)
		return ret;

	ret = FUNC0(ctx->backlight);
	if (ret)
		goto out;

	return 0;

out:
	FUNC1(ctx->dsi);
	return ret;
}