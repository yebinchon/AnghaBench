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
struct jh057n {int /*<<< orphan*/  backlight; int /*<<< orphan*/  dev; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct jh057n*) ; 
 struct jh057n* FUNC3 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC4(struct drm_panel *panel)
{
	struct jh057n *ctx = FUNC3(panel);
	int ret;

	ret = FUNC2(ctx);
	if (ret < 0) {
		FUNC0(ctx->dev, "Panel init sequence failed: %d\n",
			      ret);
		return ret;
	}

	return FUNC1(ctx->backlight);
}