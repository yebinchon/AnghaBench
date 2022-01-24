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
typedef  int uint32_t ;
struct dcn10_link_encoder {int dummy; } ;
typedef  enum dp_panel_mode { ____Placeholder_dp_panel_mode } dp_panel_mode ;

/* Variables and functions */
 int /*<<< orphan*/  DP_DPHY_INTERNAL_CTRL ; 
#define  DP_PANEL_MODE_EDP 129 
#define  DP_PANEL_MODE_SPECIAL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(
	struct dcn10_link_encoder *enc10,
	enum dp_panel_mode panel_mode)
{
	uint32_t value;

	if (!FUNC0(DP_DPHY_INTERNAL_CTRL))
		return;

	value = FUNC1(DP_DPHY_INTERNAL_CTRL);

	switch (panel_mode) {
	case DP_PANEL_MODE_EDP:
		value = 0x1;
		break;
	case DP_PANEL_MODE_SPECIAL:
		value = 0x11;
		break;
	default:
		value = 0x0;
		break;
	}

	FUNC2(DP_DPHY_INTERNAL_CTRL, value);
}