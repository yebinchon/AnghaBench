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
struct omap_hdmi {int display_enabled; int /*<<< orphan*/  lock; int /*<<< orphan*/  audio_playing_lock; } ;
struct omap_dss_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct omap_hdmi* FUNC1 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_hdmi*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_hdmi*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct omap_dss_device *dssdev)
{
	struct omap_hdmi *hdmi = FUNC1(dssdev);
	unsigned long flags;

	FUNC0("Enter hdmi_display_disable\n");

	FUNC4(&hdmi->lock);

	FUNC6(&hdmi->audio_playing_lock, flags);
	FUNC3(hdmi);
	hdmi->display_enabled = false;
	FUNC7(&hdmi->audio_playing_lock, flags);

	FUNC2(hdmi);

	FUNC5(&hdmi->lock);
}