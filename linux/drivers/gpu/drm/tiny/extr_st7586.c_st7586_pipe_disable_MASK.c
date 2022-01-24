#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mipi_dbi_dev {int enabled; int /*<<< orphan*/  dbi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct drm_simple_display_pipe {TYPE_1__ crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MIPI_DCS_SET_DISPLAY_OFF ; 
 struct mipi_dbi_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_simple_display_pipe *pipe)
{
	struct mipi_dbi_dev *dbidev = FUNC1(pipe->crtc.dev);

	/*
	 * This callback is not protected by drm_dev_enter/exit since we want to
	 * turn off the display on regular driver unload. It's highly unlikely
	 * that the underlying SPI controller is gone should this be called after
	 * unplug.
	 */

	FUNC0("\n");

	if (!dbidev->enabled)
		return;

	FUNC2(&dbidev->dbi, MIPI_DCS_SET_DISPLAY_OFF);
	dbidev->enabled = false;
}