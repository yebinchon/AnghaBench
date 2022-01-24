#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  pixelclock; } ;
struct TYPE_5__ {TYPE_1__ vm; } ;
struct omap_hdmi {int audio_configured; int display_enabled; int /*<<< orphan*/  lock; int /*<<< orphan*/  audio_playing_lock; scalar_t__ audio_playing; TYPE_3__* pdev; int /*<<< orphan*/  (* audio_abort_cb ) (int /*<<< orphan*/ *) ;TYPE_2__ cfg; int /*<<< orphan*/  audio_config; int /*<<< orphan*/  wp; int /*<<< orphan*/  core; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 struct omap_hdmi* FUNC2 (struct omap_dss_device*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct omap_hdmi*) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_hdmi*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct omap_dss_device *dssdev)
{
	struct omap_hdmi *hdmi = FUNC2(dssdev);
	unsigned long flags;
	int r;

	FUNC0("ENTER hdmi_display_enable\n");

	FUNC6(&hdmi->lock);

	r = FUNC4(hdmi);
	if (r) {
		FUNC1("failed to power on device\n");
		goto done;
	}

	if (hdmi->audio_configured) {
		r = FUNC3(&hdmi->core, &hdmi->wp,
				       &hdmi->audio_config,
				       hdmi->cfg.vm.pixelclock);
		if (r) {
			FUNC1("Error restoring audio configuration: %d", r);
			hdmi->audio_abort_cb(&hdmi->pdev->dev);
			hdmi->audio_configured = false;
		}
	}

	FUNC8(&hdmi->audio_playing_lock, flags);
	if (hdmi->audio_configured && hdmi->audio_playing)
		FUNC5(hdmi);
	hdmi->display_enabled = true;
	FUNC9(&hdmi->audio_playing_lock, flags);

done:
	FUNC7(&hdmi->lock);
}