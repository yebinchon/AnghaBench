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
struct TYPE_2__ {int /*<<< orphan*/  core_pwr_cnt; } ;
struct omap_hdmi {int core_enabled; TYPE_1__ core; int /*<<< orphan*/  vdda_reg; int /*<<< orphan*/  dss; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSS_HDMI_M_PCLK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (struct omap_hdmi*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct omap_hdmi *hdmi)
{
	int r;

	if (hdmi->core.core_pwr_cnt++)
		return 0;

	r = FUNC4(hdmi->vdda_reg);
	if (r)
		goto err_reg_enable;

	r = FUNC2(hdmi);
	if (r)
		goto err_runtime_get;

	FUNC1(&hdmi->core);

	/* Make selection of HDMI in DSS */
	FUNC0(hdmi->dss, DSS_HDMI_M_PCLK);

	hdmi->core_enabled = true;

	return 0;

err_runtime_get:
	FUNC3(hdmi->vdda_reg);
err_reg_enable:
	hdmi->core.core_pwr_cnt--;

	return r;
}