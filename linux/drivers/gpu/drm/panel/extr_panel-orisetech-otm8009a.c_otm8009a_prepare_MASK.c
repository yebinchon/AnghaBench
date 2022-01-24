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
struct otm8009a {int prepared; scalar_t__ reset_gpio; int /*<<< orphan*/  supply; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct otm8009a*) ; 
 struct otm8009a* FUNC4 (struct drm_panel*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct drm_panel *panel)
{
	struct otm8009a *ctx = FUNC4(panel);
	int ret;

	if (ctx->prepared)
		return 0;

	ret = FUNC5(ctx->supply);
	if (ret < 0) {
		FUNC0("failed to enable supply: %d\n", ret);
		return ret;
	}

	if (ctx->reset_gpio) {
		FUNC1(ctx->reset_gpio, 0);
		FUNC1(ctx->reset_gpio, 1);
		FUNC2(20);
		FUNC1(ctx->reset_gpio, 0);
		FUNC2(100);
	}

	ret = FUNC3(ctx);
	if (ret)
		return ret;

	ctx->prepared = true;

	return 0;
}