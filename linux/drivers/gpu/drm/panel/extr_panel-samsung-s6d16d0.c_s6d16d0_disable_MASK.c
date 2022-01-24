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
struct s6d16d0 {int /*<<< orphan*/  dev; } ;
struct mipi_dsi_device {int dummy; } ;
struct drm_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct mipi_dsi_device*) ; 
 struct s6d16d0* FUNC2 (struct drm_panel*) ; 
 struct mipi_dsi_device* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct drm_panel *panel)
{
	struct s6d16d0 *s6 = FUNC2(panel);
	struct mipi_dsi_device *dsi = FUNC3(s6->dev);
	int ret;

	ret = FUNC1(dsi);
	if (ret) {
		FUNC0(s6->dev, "failed to turn display off (%d)\n",
			      ret);
		return ret;
	}

	return 0;
}