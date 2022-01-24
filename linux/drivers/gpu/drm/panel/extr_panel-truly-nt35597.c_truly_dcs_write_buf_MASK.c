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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct truly_nt35597 {int /*<<< orphan*/  dev; int /*<<< orphan*/ * dsi; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct truly_nt35597* FUNC3 (struct drm_panel*) ; 

__attribute__((used)) static int FUNC4(struct drm_panel *panel,
	u32 size, const u8 *buf)
{
	struct truly_nt35597 *ctx = FUNC3(panel);
	int ret = 0;
	int i;

	for (i = 0; i < FUNC0(ctx->dsi); i++) {
		ret = FUNC2(ctx->dsi[i], buf, size);
		if (ret < 0) {
			FUNC1(ctx->dev,
				"failed to tx cmd [%d], err: %d\n", i, ret);
			return ret;
		}
	}

	return ret;
}