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
struct feiyang {int /*<<< orphan*/  dvdd; int /*<<< orphan*/  avdd; int /*<<< orphan*/  reset; int /*<<< orphan*/  dsi; } ;
struct drm_panel {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct feiyang* FUNC5 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct drm_panel *panel)
{
	struct feiyang *ctx = FUNC5(panel);
	int ret;

	ret = FUNC3(ctx->dsi);
	if (ret < 0)
		FUNC0(panel->dev, "failed to set display off: %d\n",
			      ret);

	ret = FUNC2(ctx->dsi);
	if (ret < 0)
		FUNC0(panel->dev, "failed to enter sleep mode: %d\n",
			      ret);

	/* T13 (backlight fall + video & logic signal fall) T13 >= 200ms */
	FUNC4(200);

	FUNC1(ctx->reset, 0);

	FUNC6(ctx->avdd);

	/* T11 (dvdd rise to fall) 0 < T11 <= 10ms  */
	FUNC4(10);

	FUNC6(ctx->dvdd);

	return 0;
}