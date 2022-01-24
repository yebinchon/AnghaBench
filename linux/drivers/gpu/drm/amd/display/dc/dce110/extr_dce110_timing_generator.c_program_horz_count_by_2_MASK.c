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
typedef  int /*<<< orphan*/  uint32_t ;
struct timing_generator {int /*<<< orphan*/  ctx; } ;
struct dce110_timing_generator {int dummy; } ;
struct TYPE_2__ {scalar_t__ HORZ_COUNT_BY_TWO; } ;
struct dc_crtc_timing {TYPE_1__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC_COUNT_CONTROL ; 
 int /*<<< orphan*/  CRTC_HORZ_COUNT_BY2_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dce110_timing_generator* FUNC1 (struct timing_generator*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTC_COUNT_CONTROL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(
	struct timing_generator *tg,
	const struct dc_crtc_timing *timing)
{
	uint32_t regval;
	struct dce110_timing_generator *tg110 = FUNC1(tg);

	regval = FUNC2(tg->ctx,
			FUNC0(mmCRTC_COUNT_CONTROL));

	FUNC4(regval, 0, CRTC_COUNT_CONTROL,
			CRTC_HORZ_COUNT_BY2_EN);

	if (timing->flags.HORZ_COUNT_BY_TWO)
		FUNC4(regval, 1, CRTC_COUNT_CONTROL,
					CRTC_HORZ_COUNT_BY2_EN);

	FUNC3(tg->ctx,
			FUNC0(mmCRTC_COUNT_CONTROL), regval);
}