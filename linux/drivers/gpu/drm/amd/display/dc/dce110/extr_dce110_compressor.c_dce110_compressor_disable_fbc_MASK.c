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
typedef  scalar_t__ uint32_t ;
struct dce110_compressor {int dummy; } ;
struct TYPE_3__ {scalar_t__ FBC_SUPPORT; } ;
struct TYPE_4__ {TYPE_1__ bits; } ;
struct compressor {int is_enabled; scalar_t__ attached_inst; int /*<<< orphan*/  ctx; TYPE_2__ options; } ;

/* Variables and functions */
 scalar_t__ CONTROLLER_ID_D0 ; 
 scalar_t__ CONTROLLER_ID_D3 ; 
 scalar_t__ CONTROLLER_ID_UNDEFINED ; 
 int /*<<< orphan*/  FBC_CNTL ; 
 int /*<<< orphan*/  FBC_GRPH_COMP_EN ; 
 struct dce110_compressor* FUNC0 (struct compressor*) ; 
 scalar_t__ FUNC1 (struct compressor*,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  mmFBC_CNTL ; 
 int /*<<< orphan*/  FUNC4 (struct compressor*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dce110_compressor*,int) ; 

void FUNC7(struct compressor *compressor)
{
	struct dce110_compressor *cp110 = FUNC0(compressor);
	uint32_t crtc_inst = 0;

	if (compressor->options.bits.FBC_SUPPORT) {
		if (FUNC1(compressor, &crtc_inst)) {
			uint32_t reg_data;
			/* Turn off compression */
			reg_data = FUNC2(compressor->ctx, mmFBC_CNTL);
			FUNC5(reg_data, 0, FBC_CNTL, FBC_GRPH_COMP_EN);
			FUNC3(compressor->ctx, mmFBC_CNTL, reg_data);

			/* Reset enum controller_id to undefined */
			compressor->attached_inst = 0;
			compressor->is_enabled = false;

			FUNC6(cp110, false);
		}

		/* Sync line buffer which fbc was attached to dce100/110 only */
		if (crtc_inst > CONTROLLER_ID_UNDEFINED && crtc_inst < CONTROLLER_ID_D3)
			FUNC4(compressor,
					crtc_inst - CONTROLLER_ID_D0);
	}
}