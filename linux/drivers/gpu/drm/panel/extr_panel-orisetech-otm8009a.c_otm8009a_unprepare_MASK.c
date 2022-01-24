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
struct otm8009a {int prepared; int /*<<< orphan*/  supply; scalar_t__ reset_gpio; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct otm8009a* FUNC2 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct drm_panel *panel)
{
	struct otm8009a *ctx = FUNC2(panel);

	if (!ctx->prepared)
		return 0;

	if (ctx->reset_gpio) {
		FUNC0(ctx->reset_gpio, 1);
		FUNC1(20);
	}

	FUNC3(ctx->supply);

	ctx->prepared = false;

	return 0;
}