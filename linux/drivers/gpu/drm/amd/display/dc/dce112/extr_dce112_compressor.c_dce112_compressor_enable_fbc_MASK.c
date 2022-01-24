#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct dce112_compressor {int /*<<< orphan*/  offsets; } ;
struct TYPE_3__ {scalar_t__ DUMMY_BACKEND; scalar_t__ LPT_SUPPORT; scalar_t__ FBC_SUPPORT; } ;
struct TYPE_4__ {TYPE_1__ bits; } ;
struct compressor {int is_enabled; int attached_inst; int /*<<< orphan*/  ctx; TYPE_2__ options; } ;
struct compr_addr_and_pitch_params {int source_view_width; int source_view_height; int inst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FBC_CNTL ; 
 int /*<<< orphan*/  FBC_GRPH_COMP_EN ; 
 int /*<<< orphan*/  FBC_SRC_SEL ; 
 struct dce112_compressor* FUNC0 (struct compressor*) ; 
 int /*<<< orphan*/  FUNC1 (struct compressor*) ; 
 int /*<<< orphan*/  FUNC2 (struct compressor*,int /*<<< orphan*/ *) ; 
 int dce11_one_lpt_channel_max_resolution ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dce112_compressor*,int,int) ; 
 int mmFBC_CNTL ; 
 int /*<<< orphan*/ * reg_offsets ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dce112_compressor*,int) ; 

void FUNC8(
	struct compressor *compressor,
	uint32_t paths_num,
	struct compr_addr_and_pitch_params *params)
{
	struct dce112_compressor *cp110 = FUNC0(compressor);

	if (compressor->options.bits.FBC_SUPPORT &&
		(compressor->options.bits.DUMMY_BACKEND == 0) &&
		(!FUNC2(compressor, NULL)) &&
		(!FUNC5(
			cp110,
			params->source_view_width,
			params->source_view_height))) {

		uint32_t addr;
		uint32_t value;

		/* Before enabling FBC first need to enable LPT if applicable
		 * LPT state should always be changed (enable/disable) while FBC
		 * is disabled */
		if (compressor->options.bits.LPT_SUPPORT && (paths_num < 2) &&
			(params->source_view_width *
				params->source_view_height <=
				dce11_one_lpt_channel_max_resolution)) {
			FUNC1(compressor);
		}

		addr = mmFBC_CNTL;
		value = FUNC3(compressor->ctx, addr);
		FUNC6(value, 1, FBC_CNTL, FBC_GRPH_COMP_EN);
		FUNC6(
			value,
			params->inst,
			FBC_CNTL, FBC_SRC_SEL);
		FUNC4(compressor->ctx, addr, value);

		/* Keep track of enum controller_id FBC is attached to */
		compressor->is_enabled = true;
		compressor->attached_inst = params->inst;
		cp110->offsets = reg_offsets[params->inst];

		/*Toggle it as there is bug in HW */
		FUNC6(value, 0, FBC_CNTL, FBC_GRPH_COMP_EN);
		FUNC4(compressor->ctx, addr, value);
		FUNC6(value, 1, FBC_CNTL, FBC_GRPH_COMP_EN);
		FUNC4(compressor->ctx, addr, value);

		FUNC7(cp110, true);
	}
}