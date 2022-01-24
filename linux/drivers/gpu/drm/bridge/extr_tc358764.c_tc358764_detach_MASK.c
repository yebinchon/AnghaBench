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
struct tc358764 {int /*<<< orphan*/  connector; int /*<<< orphan*/ * panel; } ;
struct drm_device {int /*<<< orphan*/  fb_helper; } ;
struct drm_bridge {struct drm_device* dev; } ;

/* Variables and functions */
 struct tc358764* FUNC0 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct drm_bridge *bridge)
{
	struct tc358764 *ctx = FUNC0(bridge);
	struct drm_device *drm = bridge->dev;

	FUNC2(&ctx->connector);
	FUNC3(drm->fb_helper, &ctx->connector);
	FUNC4(ctx->panel);
	ctx->panel = NULL;
	FUNC1(&ctx->connector);
}