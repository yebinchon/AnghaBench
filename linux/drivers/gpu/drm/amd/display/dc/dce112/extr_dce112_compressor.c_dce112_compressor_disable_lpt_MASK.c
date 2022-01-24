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
struct dce112_compressor {int dummy; } ;
struct compressor {int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DPGV0_PIPE_STUTTER_CONTROL_NONLPTCH ; 
 int /*<<< orphan*/  DPG_PIPE_STUTTER_CONTROL_NONLPTCH ; 
 int /*<<< orphan*/  GMCON_LPT_TARGET ; 
 int /*<<< orphan*/  LOW_POWER_TILING_CONTROL ; 
 int /*<<< orphan*/  LOW_POWER_TILING_ENABLE ; 
 int /*<<< orphan*/  STCTRL_LPT_TARGET ; 
 int /*<<< orphan*/  STUTTER_ENABLE_NONLPTCH ; 
 struct dce112_compressor* FUNC1 (struct compressor*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int mmDPGV0_PIPE_STUTTER_CONTROL_NONLPTCH ; 
 int /*<<< orphan*/  mmDPG_PIPE_STUTTER_CONTROL_NONLPTCH ; 
 int mmGMCON_LPT_TARGET ; 
 int mmLOW_POWER_TILING_CONTROL ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct compressor *compressor)
{
	struct dce112_compressor *cp110 = FUNC1(compressor);
	uint32_t value;
	uint32_t addr;
	uint32_t inx;

	/* Disable all pipes LPT Stutter */
	for (inx = 0; inx < 3; inx++) {
		value =
			FUNC2(
				compressor->ctx,
				FUNC0(mmDPG_PIPE_STUTTER_CONTROL_NONLPTCH));
		FUNC4(
			value,
			0,
			DPG_PIPE_STUTTER_CONTROL_NONLPTCH,
			STUTTER_ENABLE_NONLPTCH);
		FUNC3(
			compressor->ctx,
			FUNC0(mmDPG_PIPE_STUTTER_CONTROL_NONLPTCH),
			value);
	}
	/* Disable Underlay pipe LPT Stutter */
	addr = mmDPGV0_PIPE_STUTTER_CONTROL_NONLPTCH;
	value = FUNC2(compressor->ctx, addr);
	FUNC4(
		value,
		0,
		DPGV0_PIPE_STUTTER_CONTROL_NONLPTCH,
		STUTTER_ENABLE_NONLPTCH);
	FUNC3(compressor->ctx, addr, value);

	/* Disable LPT */
	addr = mmLOW_POWER_TILING_CONTROL;
	value = FUNC2(compressor->ctx, addr);
	FUNC4(
		value,
		0,
		LOW_POWER_TILING_CONTROL,
		LOW_POWER_TILING_ENABLE);
	FUNC3(compressor->ctx, addr, value);

	/* Clear selection of Channel(s) containing Compressed Surface */
	addr = mmGMCON_LPT_TARGET;
	value = FUNC2(compressor->ctx, addr);
	FUNC4(
		value,
		0xFFFFFFFF,
		GMCON_LPT_TARGET,
		STCTRL_LPT_TARGET);
	FUNC3(compressor->ctx, mmGMCON_LPT_TARGET, value);
}