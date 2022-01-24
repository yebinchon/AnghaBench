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
 int /*<<< orphan*/  LOW_POWER_TILING_MODE ; 
 int /*<<< orphan*/  STCTRL_LPT_TARGET ; 
 int /*<<< orphan*/  STUTTER_ENABLE_NONLPTCH ; 
 struct dce112_compressor* FUNC1 (struct compressor*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int mmDPGV0_PIPE_STUTTER_CONTROL_NONLPTCH ; 
 int /*<<< orphan*/  mmDPG_PIPE_STUTTER_CONTROL_NONLPTCH ; 
 int mmGMCON_LPT_TARGET ; 
 int mmLOW_POWER_TILING_CONTROL ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct compressor *compressor)
{
	struct dce112_compressor *cp110 = FUNC1(compressor);
	uint32_t value;
	uint32_t addr;
	uint32_t value_control;
	uint32_t channels;

	/* Enable LPT Stutter from Display pipe */
	value = FUNC2(compressor->ctx,
		FUNC0(mmDPG_PIPE_STUTTER_CONTROL_NONLPTCH));
	FUNC5(
		value,
		1,
		DPG_PIPE_STUTTER_CONTROL_NONLPTCH,
		STUTTER_ENABLE_NONLPTCH);
	FUNC3(compressor->ctx,
		FUNC0(mmDPG_PIPE_STUTTER_CONTROL_NONLPTCH), value);

	/* Enable Underlay pipe LPT Stutter */
	addr = mmDPGV0_PIPE_STUTTER_CONTROL_NONLPTCH;
	value = FUNC2(compressor->ctx, addr);
	FUNC5(
		value,
		1,
		DPGV0_PIPE_STUTTER_CONTROL_NONLPTCH,
		STUTTER_ENABLE_NONLPTCH);
	FUNC3(compressor->ctx, addr, value);

	/* Selection of Channel(s) containing Compressed Surface: 0xfffffff
	 * will disable LPT.
	 * STCTRL_LPT_TARGETn corresponds to channel n. */
	addr = mmLOW_POWER_TILING_CONTROL;
	value_control = FUNC2(compressor->ctx, addr);
	channels = FUNC4(value_control,
			LOW_POWER_TILING_CONTROL,
			LOW_POWER_TILING_MODE);

	addr = mmGMCON_LPT_TARGET;
	value = FUNC2(compressor->ctx, addr);
	FUNC5(
		value,
		channels + 1, /* not mentioned in programming guide,
				but follow DCE8.1 */
		GMCON_LPT_TARGET,
		STCTRL_LPT_TARGET);
	FUNC3(compressor->ctx, addr, value);

	/* Enable LPT */
	addr = mmLOW_POWER_TILING_CONTROL;
	value = FUNC2(compressor->ctx, addr);
	FUNC5(
		value,
		1,
		LOW_POWER_TILING_CONTROL,
		LOW_POWER_TILING_ENABLE);
	FUNC3(compressor->ctx, addr, value);
}