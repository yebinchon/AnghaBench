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
struct tc358764 {int /*<<< orphan*/  dev; int /*<<< orphan*/  supplies; int /*<<< orphan*/  panel; } ;
struct drm_bridge {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tc358764* FUNC1 (struct drm_bridge*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tc358764*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static void FUNC7(struct drm_bridge *bridge)
{
	struct tc358764 *ctx = FUNC1(bridge);
	int ret;

	ret = FUNC3(ctx->panel);
	if (ret < 0)
		FUNC2(ctx->dev, "error unpreparing panel (%d)\n", ret);
	FUNC5(ctx);
	FUNC6(10000, 15000);
	ret = FUNC4(FUNC0(ctx->supplies), ctx->supplies);
	if (ret < 0)
		FUNC2(ctx->dev, "error disabling regulators (%d)\n", ret);
}