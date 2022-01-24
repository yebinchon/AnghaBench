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
struct link_encoder {int dummy; } ;
struct encoder_set_dp_phy_pattern_param {int dp_phy_pattern; int /*<<< orphan*/  dp_panel_mode; int /*<<< orphan*/  custom_pattern; } ;
struct dcn10_link_encoder {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  DP_TEST_PATTERN_80BIT_CUSTOM 139 
#define  DP_TEST_PATTERN_CP2520_1 138 
#define  DP_TEST_PATTERN_CP2520_2 137 
#define  DP_TEST_PATTERN_CP2520_3 136 
#define  DP_TEST_PATTERN_D102 135 
#define  DP_TEST_PATTERN_PRBS7 134 
#define  DP_TEST_PATTERN_SYMBOL_ERROR 133 
#define  DP_TEST_PATTERN_TRAINING_PATTERN1 132 
#define  DP_TEST_PATTERN_TRAINING_PATTERN2 131 
#define  DP_TEST_PATTERN_TRAINING_PATTERN3 130 
#define  DP_TEST_PATTERN_TRAINING_PATTERN4 129 
#define  DP_TEST_PATTERN_VIDEO_MODE 128 
 struct dcn10_link_encoder* FUNC1 (struct link_encoder*) ; 
 int /*<<< orphan*/  FUNC2 (struct link_encoder*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dcn10_link_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dcn10_link_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (struct dcn10_link_encoder*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dcn10_link_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dcn10_link_encoder*) ; 
 int /*<<< orphan*/  FUNC8 (struct dcn10_link_encoder*) ; 

void FUNC9(
	struct link_encoder *enc,
	const struct encoder_set_dp_phy_pattern_param *param)
{
	struct dcn10_link_encoder *enc10 = FUNC1(enc);

	switch (param->dp_phy_pattern) {
	case DP_TEST_PATTERN_TRAINING_PATTERN1:
		FUNC2(enc, 0);
		break;
	case DP_TEST_PATTERN_TRAINING_PATTERN2:
		FUNC2(enc, 1);
		break;
	case DP_TEST_PATTERN_TRAINING_PATTERN3:
		FUNC2(enc, 2);
		break;
	case DP_TEST_PATTERN_TRAINING_PATTERN4:
		FUNC2(enc, 3);
		break;
	case DP_TEST_PATTERN_D102:
		FUNC4(enc10);
		break;
	case DP_TEST_PATTERN_SYMBOL_ERROR:
		FUNC8(enc10);
		break;
	case DP_TEST_PATTERN_PRBS7:
		FUNC7(enc10);
		break;
	case DP_TEST_PATTERN_80BIT_CUSTOM:
		FUNC3(
			enc10, param->custom_pattern);
		break;
	case DP_TEST_PATTERN_CP2520_1:
		FUNC5(enc10, 1);
		break;
	case DP_TEST_PATTERN_CP2520_2:
		FUNC5(enc10, 2);
		break;
	case DP_TEST_PATTERN_CP2520_3:
		FUNC5(enc10, 3);
		break;
	case DP_TEST_PATTERN_VIDEO_MODE: {
		FUNC6(
			enc10, param->dp_panel_mode);
		break;
	}

	default:
		/* invalid phy pattern */
		FUNC0(false);
		break;
	}
}