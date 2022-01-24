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
struct dw_hdmi {int /*<<< orphan*/  mutex; int /*<<< orphan*/  previous_mode; } ;
struct drm_display_mode {int dummy; } ;
struct drm_bridge {struct dw_hdmi* driver_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct drm_display_mode const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct drm_bridge *bridge,
				    const struct drm_display_mode *orig_mode,
				    const struct drm_display_mode *mode)
{
	struct dw_hdmi *hdmi = bridge->driver_private;

	FUNC1(&hdmi->mutex);

	/* Store the display mode for plugin/DKMS poweron events */
	FUNC0(&hdmi->previous_mode, mode, sizeof(hdmi->previous_mode));

	FUNC2(&hdmi->mutex);
}