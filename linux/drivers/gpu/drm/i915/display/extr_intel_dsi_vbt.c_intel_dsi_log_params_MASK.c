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
struct intel_dsi {char* pclk; char* pixel_overlap; char* lane_count; char* dphy_reg; scalar_t__ video_mode_format; char* burst_mode_ratio; char* rst_timer_val; int eotp_pkt; scalar_t__ dual_link; char* pixel_format; char* escape_clk_div; char* lp_rx_timeout; char* turn_arnd_val; char* init_count; char* hs_to_lp_count; char* lp_byte_clk; char* bw_timer; char* clk_lp_to_hs_count; char* clk_hs_to_lp_count; int video_frmt_cfg_bits; scalar_t__ operation_mode; int /*<<< orphan*/  clock_stop; } ;

/* Variables and functions */
 int DISABLE_VIDEO_BTA ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ DSI_DUAL_LINK_FRONT_BACK ; 
 scalar_t__ DSI_DUAL_LINK_PIXEL_ALT ; 
 scalar_t__ VIDEO_MODE_BURST ; 
 scalar_t__ VIDEO_MODE_NON_BURST_WITH_SYNC_EVENTS ; 
 scalar_t__ VIDEO_MODE_NON_BURST_WITH_SYNC_PULSE ; 
 char* FUNC1 (int) ; 

void FUNC2(struct intel_dsi *intel_dsi)
{
	FUNC0("Pclk %d\n", intel_dsi->pclk);
	FUNC0("Pixel overlap %d\n", intel_dsi->pixel_overlap);
	FUNC0("Lane count %d\n", intel_dsi->lane_count);
	FUNC0("DPHY param reg 0x%x\n", intel_dsi->dphy_reg);
	FUNC0("Video mode format %s\n",
		      intel_dsi->video_mode_format == VIDEO_MODE_NON_BURST_WITH_SYNC_PULSE ?
		      "non-burst with sync pulse" :
		      intel_dsi->video_mode_format == VIDEO_MODE_NON_BURST_WITH_SYNC_EVENTS ?
		      "non-burst with sync events" :
		      intel_dsi->video_mode_format == VIDEO_MODE_BURST ?
		      "burst" : "<unknown>");
	FUNC0("Burst mode ratio %d\n", intel_dsi->burst_mode_ratio);
	FUNC0("Reset timer %d\n", intel_dsi->rst_timer_val);
	FUNC0("Eot %s\n", FUNC1(intel_dsi->eotp_pkt));
	FUNC0("Clockstop %s\n", FUNC1(!intel_dsi->clock_stop));
	FUNC0("Mode %s\n", intel_dsi->operation_mode ? "command" : "video");
	if (intel_dsi->dual_link == DSI_DUAL_LINK_FRONT_BACK)
		FUNC0("Dual link: DSI_DUAL_LINK_FRONT_BACK\n");
	else if (intel_dsi->dual_link == DSI_DUAL_LINK_PIXEL_ALT)
		FUNC0("Dual link: DSI_DUAL_LINK_PIXEL_ALT\n");
	else
		FUNC0("Dual link: NONE\n");
	FUNC0("Pixel Format %d\n", intel_dsi->pixel_format);
	FUNC0("TLPX %d\n", intel_dsi->escape_clk_div);
	FUNC0("LP RX Timeout 0x%x\n", intel_dsi->lp_rx_timeout);
	FUNC0("Turnaround Timeout 0x%x\n", intel_dsi->turn_arnd_val);
	FUNC0("Init Count 0x%x\n", intel_dsi->init_count);
	FUNC0("HS to LP Count 0x%x\n", intel_dsi->hs_to_lp_count);
	FUNC0("LP Byte Clock %d\n", intel_dsi->lp_byte_clk);
	FUNC0("DBI BW Timer 0x%x\n", intel_dsi->bw_timer);
	FUNC0("LP to HS Clock Count 0x%x\n", intel_dsi->clk_lp_to_hs_count);
	FUNC0("HS to LP Clock Count 0x%x\n", intel_dsi->clk_hs_to_lp_count);
	FUNC0("BTA %s\n",
			FUNC1(!(intel_dsi->video_frmt_cfg_bits & DISABLE_VIDEO_BTA)));
}