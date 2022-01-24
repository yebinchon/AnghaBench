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
struct jh057n {int prepared; int /*<<< orphan*/  vcc; int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  dev; int /*<<< orphan*/  iovcc; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct jh057n* FUNC4 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct drm_panel *panel)
{
	struct jh057n *ctx = FUNC4(panel);
	int ret;

	if (ctx->prepared)
		return 0;

	FUNC0(ctx->dev, "Resetting the panel\n");
	ret = FUNC6(ctx->vcc);
	if (ret < 0) {
		FUNC1(ctx->dev,
			      "Failed to enable vcc supply: %d\n", ret);
		return ret;
	}
	ret = FUNC6(ctx->iovcc);
	if (ret < 0) {
		FUNC1(ctx->dev,
			      "Failed to enable iovcc supply: %d\n", ret);
		goto disable_vcc;
	}

	FUNC2(ctx->reset_gpio, 1);
	FUNC7(20, 40);
	FUNC2(ctx->reset_gpio, 0);
	FUNC3(20);

	ctx->prepared = true;

	return 0;

disable_vcc:
	FUNC5(ctx->vcc);
	return ret;
}