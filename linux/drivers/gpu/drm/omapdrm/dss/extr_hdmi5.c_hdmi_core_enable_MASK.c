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
struct omap_hdmi {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct omap_hdmi*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct omap_hdmi *hdmi)
{
	int r = 0;

	FUNC0("ENTER omapdss_hdmi_core_enable\n");

	FUNC3(&hdmi->lock);

	r = FUNC2(hdmi);
	if (r) {
		FUNC1("failed to power on device\n");
		goto err0;
	}

	FUNC4(&hdmi->lock);
	return 0;

err0:
	FUNC4(&hdmi->lock);
	return r;
}