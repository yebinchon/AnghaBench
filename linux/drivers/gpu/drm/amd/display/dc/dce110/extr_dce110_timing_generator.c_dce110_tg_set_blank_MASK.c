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
typedef  scalar_t__ uint32_t ;
struct timing_generator {int /*<<< orphan*/  ctx; } ;
struct dce110_timing_generator {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC_BLANK_CONTROL ; 
 int /*<<< orphan*/  CRTC_BLANK_DATA_DOUBLE_BUFFER_EN ; 
 int /*<<< orphan*/  CRTC_BLANK_DATA_EN ; 
 int /*<<< orphan*/  CRTC_DOUBLE_BUFFER_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dce110_timing_generator* FUNC1 (struct timing_generator*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  mmCRTC_BLANK_CONTROL ; 
 int /*<<< orphan*/  mmCRTC_DOUBLE_BUFFER_CONTROL ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct timing_generator *tg,
		bool enable_blanking)
{
	struct dce110_timing_generator *tg110 = FUNC1(tg);
	uint32_t value = 0;

	FUNC3(
		value,
		1,
		CRTC_DOUBLE_BUFFER_CONTROL,
		CRTC_BLANK_DATA_DOUBLE_BUFFER_EN);

	FUNC2(tg->ctx, FUNC0(mmCRTC_DOUBLE_BUFFER_CONTROL), value);
	value = 0;

	if (enable_blanking) {
		FUNC3(
			value,
			1,
			CRTC_BLANK_CONTROL,
			CRTC_BLANK_DATA_EN);

		FUNC2(tg->ctx, FUNC0(mmCRTC_BLANK_CONTROL), value);

	} else
		FUNC2(tg->ctx, FUNC0(mmCRTC_BLANK_CONTROL), 0);
}