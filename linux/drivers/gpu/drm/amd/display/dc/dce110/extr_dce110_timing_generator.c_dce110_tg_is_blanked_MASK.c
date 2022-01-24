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
typedef  int /*<<< orphan*/  uint32_t ;
struct timing_generator {int /*<<< orphan*/  ctx; } ;
struct dce110_timing_generator {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC_BLANK_CONTROL ; 
 int /*<<< orphan*/  CRTC_BLANK_DATA_EN ; 
 int /*<<< orphan*/  CRTC_CURRENT_BLANK_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dce110_timing_generator* FUNC1 (struct timing_generator*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTC_BLANK_CONTROL ; 

bool FUNC4(struct timing_generator *tg)
{
	struct dce110_timing_generator *tg110 = FUNC1(tg);
	uint32_t value = FUNC2(tg->ctx, FUNC0(mmCRTC_BLANK_CONTROL));

	if (FUNC3(
			value,
			CRTC_BLANK_CONTROL,
			CRTC_BLANK_DATA_EN) == 1 &&
		FUNC3(
			value,
			CRTC_BLANK_CONTROL,
			CRTC_CURRENT_BLANK_STATE) == 1)
		return true;
	return false;
}