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
struct dw_hdmi {int disabled; int /*<<< orphan*/  mutex; } ;
struct drm_bridge {struct dw_hdmi* driver_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dw_hdmi*) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_hdmi*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct drm_bridge *bridge)
{
	struct dw_hdmi *hdmi = bridge->driver_private;

	FUNC2(&hdmi->mutex);
	hdmi->disabled = true;
	FUNC1(hdmi);
	FUNC0(hdmi);
	FUNC3(&hdmi->mutex);
}