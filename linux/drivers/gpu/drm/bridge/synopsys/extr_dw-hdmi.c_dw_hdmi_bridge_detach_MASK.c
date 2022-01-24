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
struct dw_hdmi {int /*<<< orphan*/  cec_notifier_mutex; int /*<<< orphan*/ * cec_notifier; } ;
struct drm_bridge {struct dw_hdmi* driver_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct drm_bridge *bridge)
{
	struct dw_hdmi *hdmi = bridge->driver_private;

	FUNC1(&hdmi->cec_notifier_mutex);
	FUNC0(hdmi->cec_notifier);
	hdmi->cec_notifier = NULL;
	FUNC2(&hdmi->cec_notifier_mutex);
}