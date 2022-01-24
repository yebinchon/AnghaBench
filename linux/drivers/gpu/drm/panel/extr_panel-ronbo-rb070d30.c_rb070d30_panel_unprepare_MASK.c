#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  power; int /*<<< orphan*/  reset; } ;
struct rb070d30_panel {int /*<<< orphan*/  supply; TYPE_1__ gpios; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rb070d30_panel* FUNC1 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct drm_panel *panel)
{
	struct rb070d30_panel *ctx = FUNC1(panel);

	FUNC0(ctx->gpios.reset, 0);
	FUNC0(ctx->gpios.power, 0);
	FUNC2(ctx->supply);

	return 0;
}