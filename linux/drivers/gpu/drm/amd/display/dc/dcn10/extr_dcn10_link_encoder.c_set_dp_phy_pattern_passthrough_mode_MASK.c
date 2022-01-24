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
struct dcn10_link_encoder {int dummy; } ;
typedef  enum dp_panel_mode { ____Placeholder_dp_panel_mode } dp_panel_mode ;

/* Variables and functions */
 int /*<<< orphan*/  DPHY_SCRAMBLER_BS_COUNT ; 
 int /*<<< orphan*/  DP_DPHY_SCRAM_CNTL ; 
 int /*<<< orphan*/  DP_IDLE_BS_INTERVAL ; 
 int /*<<< orphan*/  DP_LINK_FRAMING_CNTL ; 
 int /*<<< orphan*/  DP_VBID_DISABLE ; 
 int /*<<< orphan*/  DP_VID_ENHANCED_FRAME_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dcn10_link_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct dcn10_link_encoder*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dcn10_link_encoder*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dcn10_link_encoder*,int) ; 

__attribute__((used)) static void FUNC6(
	struct dcn10_link_encoder *enc10,
	enum dp_panel_mode panel_mode)
{
	/* program correct panel mode */
	FUNC5(enc10, panel_mode);

	/* restore LINK_FRAMING_CNTL and DPHY_SCRAMBLER_BS_COUNT
	 * in case we were doing HBR2 compliance pattern before
	 */
	FUNC1(DP_LINK_FRAMING_CNTL,
			DP_IDLE_BS_INTERVAL, 0x2000,
			DP_VBID_DISABLE, 0,
			DP_VID_ENHANCED_FRAME_MODE, 1);

	FUNC0(DP_DPHY_SCRAM_CNTL, DPHY_SCRAMBLER_BS_COUNT, 0x1FF);

	/* set link training complete */
	FUNC4(enc10, true);

	/* Disable PHY Bypass mode to setup the test pattern */
	FUNC3(enc10, false);

	/* Disable PRBS mode */
	FUNC2(enc10);
}