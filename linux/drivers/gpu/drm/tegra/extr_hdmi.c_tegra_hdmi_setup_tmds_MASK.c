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
typedef  int /*<<< orphan*/  u32 ;
struct tmds_config {int /*<<< orphan*/  peak_current; int /*<<< orphan*/  drive_current; int /*<<< orphan*/  pe_current; int /*<<< orphan*/  pll1; int /*<<< orphan*/  pll0; } ;
struct tegra_hdmi {TYPE_1__* config; } ;
struct TYPE_2__ {scalar_t__ has_sor_io_peak_current; int /*<<< orphan*/  fuse_override_offset; int /*<<< orphan*/  fuse_override_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDMI_NV_PDISP_PE_CURRENT ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_SOR_IO_PEAK_CURRENT ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_SOR_LANE_DRIVE_CURRENT ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_SOR_PLL0 ; 
 int /*<<< orphan*/  HDMI_NV_PDISP_SOR_PLL1 ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_hdmi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_hdmi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct tegra_hdmi *hdmi,
				  const struct tmds_config *tmds)
{
	u32 value;

	FUNC1(hdmi, tmds->pll0, HDMI_NV_PDISP_SOR_PLL0);
	FUNC1(hdmi, tmds->pll1, HDMI_NV_PDISP_SOR_PLL1);
	FUNC1(hdmi, tmds->pe_current, HDMI_NV_PDISP_PE_CURRENT);

	FUNC1(hdmi, tmds->drive_current,
			  HDMI_NV_PDISP_SOR_LANE_DRIVE_CURRENT);

	value = FUNC0(hdmi, hdmi->config->fuse_override_offset);
	value |= hdmi->config->fuse_override_value;
	FUNC1(hdmi, value, hdmi->config->fuse_override_offset);

	if (hdmi->config->has_sor_io_peak_current)
		FUNC1(hdmi, tmds->peak_current,
				  HDMI_NV_PDISP_SOR_IO_PEAK_CURRENT);
}