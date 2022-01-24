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
struct omap_hdmi {int /*<<< orphan*/  core; } ;
struct omap_dss_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEC_PHYS_ADDR_INVALID ; 
 struct omap_hdmi* FUNC0 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct omap_dss_device *dssdev)
{
	struct omap_hdmi *hdmi = FUNC0(dssdev);

	FUNC1(&hdmi->core, CEC_PHYS_ADDR_INVALID);
}