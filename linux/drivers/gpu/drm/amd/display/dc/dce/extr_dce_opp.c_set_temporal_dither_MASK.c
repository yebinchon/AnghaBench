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
struct dce110_opp {int dummy; } ;
struct TYPE_2__ {scalar_t__ FRAME_MODULATION_ENABLED; int FRAME_MODULATION_DEPTH; int TEMPORAL_LEVEL; int FRC25; int /*<<< orphan*/  FRC75; int /*<<< orphan*/  FRC50; } ;
struct bit_depth_reduction_params {TYPE_1__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FMT_25FRC_SEL ; 
 int /*<<< orphan*/  FMT_50FRC_SEL ; 
 int /*<<< orphan*/  FMT_75FRC_SEL ; 
 int /*<<< orphan*/  FMT_BIT_DEPTH_CONTROL ; 
 int /*<<< orphan*/  FMT_TEMPORAL_DITHER_DEPTH ; 
 int /*<<< orphan*/  FMT_TEMPORAL_DITHER_EN ; 
 int /*<<< orphan*/  FMT_TEMPORAL_DITHER_OFFSET ; 
 int /*<<< orphan*/  FMT_TEMPORAL_DITHER_PATTERN_CONTROL ; 
 int /*<<< orphan*/  FMT_TEMPORAL_DITHER_PROGRAMMABLE_PATTERN_S_MATRIX ; 
 int /*<<< orphan*/  FMT_TEMPORAL_DITHER_PROGRAMMABLE_PATTERN_T_MATRIX ; 
 int /*<<< orphan*/  FMT_TEMPORAL_DITHER_RESET ; 
 int /*<<< orphan*/  FMT_TEMPORAL_LEVEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(
	struct dce110_opp *opp110,
	const struct bit_depth_reduction_params *params)
{
	/*Disable temporal (frame modulation) dithering first*/
	FUNC3(FMT_BIT_DEPTH_CONTROL,
		FMT_TEMPORAL_DITHER_EN, 0,
		FMT_TEMPORAL_DITHER_RESET, 0,
		FMT_TEMPORAL_DITHER_OFFSET, 0);

	FUNC2(FMT_BIT_DEPTH_CONTROL,
		FMT_TEMPORAL_DITHER_DEPTH, 0,
		FMT_TEMPORAL_LEVEL, 0);

	FUNC3(FMT_BIT_DEPTH_CONTROL,
		FMT_25FRC_SEL, 0,
		FMT_50FRC_SEL, 0,
		FMT_75FRC_SEL, 0);

	/* no 10bpc dither on DCE11*/
	if (params->flags.FRAME_MODULATION_ENABLED == 0 ||
		params->flags.FRAME_MODULATION_DEPTH == 2)
		return;

	/* Set temporal dithering depth*/
	FUNC3(FMT_BIT_DEPTH_CONTROL,
		FMT_TEMPORAL_DITHER_DEPTH, params->flags.FRAME_MODULATION_DEPTH,
		FMT_TEMPORAL_DITHER_RESET, 0,
		FMT_TEMPORAL_DITHER_OFFSET, 0);

	/*Select legacy pattern based on FRC and Temporal level*/
	if (FUNC0(FMT_TEMPORAL_DITHER_PATTERN_CONTROL)) {
		FUNC4(FMT_TEMPORAL_DITHER_PATTERN_CONTROL, 0);
		/*Set s matrix*/
		FUNC4(FMT_TEMPORAL_DITHER_PROGRAMMABLE_PATTERN_S_MATRIX, 0);
		/*Set t matrix*/
		FUNC4(FMT_TEMPORAL_DITHER_PROGRAMMABLE_PATTERN_T_MATRIX, 0);
	}

	/*Select patterns for 0.25, 0.5 and 0.75 grey level*/
	FUNC1(FMT_BIT_DEPTH_CONTROL,
		FMT_TEMPORAL_LEVEL, params->flags.TEMPORAL_LEVEL);

	FUNC3(FMT_BIT_DEPTH_CONTROL,
		FMT_25FRC_SEL, params->flags.FRC25,
		FMT_50FRC_SEL, params->flags.FRC50,
		FMT_75FRC_SEL, params->flags.FRC75);

	/*Enable bit reduction by temporal (frame modulation) dithering*/
	FUNC1(FMT_BIT_DEPTH_CONTROL,
		FMT_TEMPORAL_DITHER_EN, 1);
}