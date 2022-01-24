#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  vm; } ;
struct omap_hdmi {int /*<<< orphan*/  lock; TYPE_2__* dss; TYPE_1__ cfg; } ;
struct omap_dss_device {int dummy; } ;
struct drm_display_mode {int clock; } ;
struct TYPE_4__ {int /*<<< orphan*/  dispc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_display_mode const*,int /*<<< orphan*/ *) ; 
 struct omap_hdmi* FUNC2 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct omap_dss_device *dssdev,
				     const struct drm_display_mode *mode)
{
	struct omap_hdmi *hdmi = FUNC2(dssdev);

	FUNC3(&hdmi->lock);

	FUNC1(mode, &hdmi->cfg.vm);

	FUNC0(hdmi->dss->dispc, mode->clock * 1000);

	FUNC4(&hdmi->lock);
}