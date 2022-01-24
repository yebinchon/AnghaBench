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
typedef  int /*<<< orphan*/  uint32_t ;
struct dce110_compressor {int dummy; } ;
struct TYPE_3__ {scalar_t__ FBC_SUPPORT; } ;
struct TYPE_4__ {TYPE_1__ bits; } ;
struct compressor {int is_enabled; int /*<<< orphan*/  ctx; scalar_t__ attached_inst; TYPE_2__ options; } ;
struct compr_addr_and_pitch_params {int inst; } ;

/* Variables and functions */
 scalar_t__ CONTROLLER_ID_D0 ; 
 int /*<<< orphan*/  FBC_CNTL ; 
 int /*<<< orphan*/  FBC_DECOMPRESS_ERROR_CLEAR ; 
 int /*<<< orphan*/  FBC_GRPH_COMP_EN ; 
 int /*<<< orphan*/  FBC_INVALIDATE_ON_ERROR ; 
 int /*<<< orphan*/  FBC_MISC ; 
 int /*<<< orphan*/  FBC_SLOW_REQ_INTERVAL ; 
 int /*<<< orphan*/  FBC_SRC_SEL ; 
 struct dce110_compressor* FUNC0 (struct compressor*) ; 
 int /*<<< orphan*/  FUNC1 (struct compressor*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmFBC_CNTL ; 
 int /*<<< orphan*/  mmFBC_MISC ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dce110_compressor*,int) ; 

void FUNC6(
	struct compressor *compressor,
	struct compr_addr_and_pitch_params *params)
{
	struct dce110_compressor *cp110 = FUNC0(compressor);

	if (compressor->options.bits.FBC_SUPPORT &&
		(!FUNC1(compressor, NULL))) {

		uint32_t addr;
		uint32_t value, misc_value;

		addr = mmFBC_CNTL;
		value = FUNC2(compressor->ctx, addr);
		FUNC4(value, 1, FBC_CNTL, FBC_GRPH_COMP_EN);
		/* params->inst is valid HW CRTC instance start from 0 */
		FUNC4(
			value,
			params->inst,
			FBC_CNTL, FBC_SRC_SEL);
		FUNC3(compressor->ctx, addr, value);

		/* Keep track of enum controller_id FBC is attached to */
		compressor->is_enabled = true;
		/* attached_inst is SW CRTC instance start from 1
		 * 0 = CONTROLLER_ID_UNDEFINED means not attached crtc
		 */
		compressor->attached_inst = params->inst + CONTROLLER_ID_D0;

		/* Toggle it as there is bug in HW */
		FUNC4(value, 0, FBC_CNTL, FBC_GRPH_COMP_EN);
		FUNC3(compressor->ctx, addr, value);

		/* FBC usage with scatter & gather for dce110 */
		misc_value = FUNC2(compressor->ctx, mmFBC_MISC);

		FUNC4(misc_value, 1,
				FBC_MISC, FBC_INVALIDATE_ON_ERROR);
		FUNC4(misc_value, 1,
				FBC_MISC, FBC_DECOMPRESS_ERROR_CLEAR);
		FUNC4(misc_value, 0x14,
				FBC_MISC, FBC_SLOW_REQ_INTERVAL);

		FUNC3(compressor->ctx, mmFBC_MISC, misc_value);

		/* Enable FBC */
		FUNC4(value, 1, FBC_CNTL, FBC_GRPH_COMP_EN);
		FUNC3(compressor->ctx, addr, value);

		FUNC5(cp110, true);
	}
}