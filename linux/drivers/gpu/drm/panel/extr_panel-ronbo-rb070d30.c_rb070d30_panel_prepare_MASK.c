#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  reset; int /*<<< orphan*/  power; } ;
struct rb070d30_panel {TYPE_2__ gpios; TYPE_1__* dsi; int /*<<< orphan*/  supply; } ;
struct drm_panel {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct rb070d30_panel* FUNC3 (struct drm_panel*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct drm_panel *panel)
{
	struct rb070d30_panel *ctx = FUNC3(panel);
	int ret;

	ret = FUNC4(ctx->supply);
	if (ret < 0) {
		FUNC0(&ctx->dsi->dev, "Failed to enable supply: %d\n", ret);
		return ret;
	}

	FUNC2(20);
	FUNC1(ctx->gpios.power, 1);
	FUNC2(20);
	FUNC1(ctx->gpios.reset, 1);
	FUNC2(20);
	return 0;
}