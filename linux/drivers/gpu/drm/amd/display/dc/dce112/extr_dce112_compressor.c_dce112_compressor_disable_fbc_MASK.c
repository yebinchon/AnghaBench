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
struct dce112_compressor {int dummy; } ;
struct TYPE_3__ {scalar_t__ LPT_SUPPORT; scalar_t__ FBC_SUPPORT; } ;
struct TYPE_4__ {TYPE_1__ bits; } ;
struct compressor {int is_enabled; TYPE_2__ options; scalar_t__ attached_inst; int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FBC_CNTL ; 
 int /*<<< orphan*/  FBC_GRPH_COMP_EN ; 
 struct dce112_compressor* FUNC0 (struct compressor*) ; 
 int /*<<< orphan*/  FUNC1 (struct compressor*) ; 
 scalar_t__ FUNC2 (struct compressor*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmFBC_CNTL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dce112_compressor*,int) ; 

void FUNC7(struct compressor *compressor)
{
	struct dce112_compressor *cp110 = FUNC0(compressor);

	if (compressor->options.bits.FBC_SUPPORT &&
		FUNC2(compressor, NULL)) {
		uint32_t reg_data;
		/* Turn off compression */
		reg_data = FUNC3(compressor->ctx, mmFBC_CNTL);
		FUNC5(reg_data, 0, FBC_CNTL, FBC_GRPH_COMP_EN);
		FUNC4(compressor->ctx, mmFBC_CNTL, reg_data);

		/* Reset enum controller_id to undefined */
		compressor->attached_inst = 0;
		compressor->is_enabled = false;

		/* Whenever disabling FBC make sure LPT is disabled if LPT
		 * supported */
		if (compressor->options.bits.LPT_SUPPORT)
			FUNC1(compressor);

		FUNC6(cp110, false);
	}
}