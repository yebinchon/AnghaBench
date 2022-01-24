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
struct truly_nt35597 {int enabled; int /*<<< orphan*/  dev; scalar_t__ backlight; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (scalar_t__) ; 
 struct truly_nt35597* FUNC2 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC3(struct drm_panel *panel)
{
	struct truly_nt35597 *ctx = FUNC2(panel);
	int ret;

	if (!ctx->enabled)
		return 0;

	if (ctx->backlight) {
		ret = FUNC1(ctx->backlight);
		if (ret < 0)
			FUNC0(ctx->dev, "backlight disable failed %d\n",
				ret);
	}

	ctx->enabled = false;
	return 0;
}