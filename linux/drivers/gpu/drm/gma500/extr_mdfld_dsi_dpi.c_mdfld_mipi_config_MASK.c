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
struct mdfld_dsi_config {int lane_count; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mdfld_dsi_config*,int) ; 

__attribute__((used)) static void FUNC6(struct mdfld_dsi_config *dsi_config, int pipe)
{
	struct drm_device *dev = dsi_config->dev;
	int lane_count = dsi_config->lane_count;

	if (pipe) {
		FUNC4(FUNC2(0), 0x00000002);
		FUNC4(FUNC2(2), 0x80000000);
	} else {
		FUNC4(FUNC2(0), 0x80010000);
		FUNC4(FUNC2(2), 0x00);
	}

	FUNC4(FUNC0(pipe), 0x150A600F);
	FUNC4(FUNC3(pipe), 0x0000000F);

	/* lane_count = 3 */
	FUNC4(FUNC1(pipe), 0x00000200 | lane_count);

	FUNC5(dsi_config, pipe);
}