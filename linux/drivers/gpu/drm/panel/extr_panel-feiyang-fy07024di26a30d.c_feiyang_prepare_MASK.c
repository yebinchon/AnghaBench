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
struct mipi_dsi_device {int dummy; } ;
struct feiyang_init_cmd {int /*<<< orphan*/  data; } ;
struct feiyang {int /*<<< orphan*/  reset; int /*<<< orphan*/  avdd; int /*<<< orphan*/  dvdd; struct mipi_dsi_device* dsi; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct feiyang_init_cmd*) ; 
 int /*<<< orphan*/  FEIYANG_INIT_CMD_LEN ; 
 struct feiyang_init_cmd* feiyang_init_cmds ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct mipi_dsi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct feiyang* FUNC4 (struct drm_panel*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct drm_panel *panel)
{
	struct feiyang *ctx = FUNC4(panel);
	struct mipi_dsi_device *dsi = ctx->dsi;
	unsigned int i;
	int ret;

	ret = FUNC5(ctx->dvdd);
	if (ret)
		return ret;

	/* T1 (dvdd start + dvdd rise) 0 < T1 <= 10ms */
	FUNC3(10);

	ret = FUNC5(ctx->avdd);
	if (ret)
		return ret;

	/* T3 (dvdd rise + avdd start + avdd rise) T3 >= 20ms */
	FUNC3(20);

	FUNC1(ctx->reset, 0);

	/*
	 * T5 + T6 (avdd rise + video & logic signal rise)
	 * T5 >= 10ms, 0 < T6 <= 10ms
	 */
	FUNC3(20);

	FUNC1(ctx->reset, 1);

	/* T12 (video & logic signal rise + backlight rise) T12 >= 200ms */
	FUNC3(200);

	for (i = 0; i < FUNC0(feiyang_init_cmds); i++) {
		const struct feiyang_init_cmd *cmd =
						&feiyang_init_cmds[i];

		ret = FUNC2(dsi, cmd->data,
						FEIYANG_INIT_CMD_LEN);
		if (ret < 0)
			return ret;
	}

	return 0;
}