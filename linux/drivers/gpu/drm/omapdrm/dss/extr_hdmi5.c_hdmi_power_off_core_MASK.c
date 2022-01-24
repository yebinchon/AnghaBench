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
struct omap_hdmi {int core_enabled; int /*<<< orphan*/  vdda_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct omap_hdmi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct omap_hdmi *hdmi)
{
	hdmi->core_enabled = false;

	FUNC0(hdmi);
	FUNC1(hdmi->vdda_reg);
}