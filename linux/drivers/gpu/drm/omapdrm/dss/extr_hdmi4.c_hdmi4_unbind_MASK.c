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
struct omap_hdmi {int /*<<< orphan*/  pll; int /*<<< orphan*/  core; scalar_t__ audio_pdev; int /*<<< orphan*/  debugfs; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct omap_hdmi* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct device *dev, struct device *master, void *data)
{
	struct omap_hdmi *hdmi = FUNC0(dev);

	FUNC1(hdmi->debugfs);

	if (hdmi->audio_pdev)
		FUNC4(hdmi->audio_pdev);

	FUNC2(&hdmi->core);
	FUNC3(&hdmi->pll);
}