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
struct s6d16d0 {int /*<<< orphan*/  supply; int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  dev; } ;
struct mipi_dsi_device {int dummy; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct mipi_dsi_device*) ; 
 struct s6d16d0* FUNC3 (struct drm_panel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct mipi_dsi_device* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct drm_panel *panel)
{
	struct s6d16d0 *s6 = FUNC3(panel);
	struct mipi_dsi_device *dsi = FUNC5(s6->dev);
	int ret;

	/* Enter sleep mode */
	ret = FUNC2(dsi);
	if (ret) {
		FUNC0(s6->dev, "failed to enter sleep mode (%d)\n",
			      ret);
		return ret;
	}

	/* Assert RESET */
	FUNC1(s6->reset_gpio, 1);
	FUNC4(s6->supply);

	return 0;
}