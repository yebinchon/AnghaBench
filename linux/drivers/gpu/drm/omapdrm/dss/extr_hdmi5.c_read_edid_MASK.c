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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;
struct omap_hdmi {int /*<<< orphan*/  lock; TYPE_1__ wp; int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  HDMI_WP_SYSCONFIG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct omap_hdmi*) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_hdmi*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct omap_hdmi *hdmi, u8 *buf, int len)
{
	int r;
	int idlemode;

	FUNC6(&hdmi->lock);

	r = FUNC4(hdmi);
	FUNC0(r);

	idlemode = FUNC2(hdmi->wp.base, HDMI_WP_SYSCONFIG, 3, 2);
	/* No-idle mode */
	FUNC1(hdmi->wp.base, HDMI_WP_SYSCONFIG, 1, 3, 2);

	r = FUNC3(&hdmi->core,  buf, len);

	FUNC1(hdmi->wp.base, HDMI_WP_SYSCONFIG, idlemode, 3, 2);

	FUNC5(hdmi);
	FUNC7(&hdmi->lock);

	return r;
}