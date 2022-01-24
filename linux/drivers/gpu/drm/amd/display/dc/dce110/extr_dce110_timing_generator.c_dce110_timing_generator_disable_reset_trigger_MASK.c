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
 int /*<<< orphan*/  CRTC_AUTO_FORCE_VSYNC_MODE ; 
 int /*<<< orphan*/  CRTC_FORCE_COUNT_NOW_CLEAR ; 
 int /*<<< orphan*/  CRTC_FORCE_COUNT_NOW_CNTL ; 
 int /*<<< orphan*/  CRTC_FORCE_COUNT_NOW_MODE ; 
 int /*<<< orphan*/  CRTC_FORCE_VSYNC_NEXT_LINE_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRTC_TRIGB_CLEAR ; 
 int /*<<< orphan*/  CRTC_TRIGB_CNTL ; 
 int /*<<< orphan*/  CRTC_TRIGB_POLARITY_SELECT ; 
 int /*<<< orphan*/  CRTC_TRIGB_SOURCE_SELECT ; 
 int /*<<< orphan*/  CRTC_VERT_SYNC_CONTROL ; 
 struct dce110_timing_generator* FUNC1 (struct timing_generator*) ; 
 int TRIGGER_POLARITY_SELECT_LOGIC_ZERO ; 
 int TRIGGER_SOURCE_SELECT_LOGIC_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTC_FORCE_COUNT_NOW_CNTL ; 
 int /*<<< orphan*/  mmCRTC_TRIGB_CNTL ; 
 int /*<<< orphan*/  mmCRTC_VERT_SYNC_CONTROL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(
	struct timing_generator *tg)
{
	uint32_t value;
	struct dce110_timing_generator *tg110 = FUNC1(tg);

	value = FUNC2(tg->ctx, FUNC0(mmCRTC_FORCE_COUNT_NOW_CNTL));

	FUNC4(value,
			    0, /* force counter now mode is disabled */
			    CRTC_FORCE_COUNT_NOW_CNTL,
			    CRTC_FORCE_COUNT_NOW_MODE);

	FUNC4(value,
			    1, /* clear trigger status */
			    CRTC_FORCE_COUNT_NOW_CNTL,
			    CRTC_FORCE_COUNT_NOW_CLEAR);

	FUNC3(tg->ctx, FUNC0(mmCRTC_FORCE_COUNT_NOW_CNTL), value);

	value = FUNC2(tg->ctx, FUNC0(mmCRTC_VERT_SYNC_CONTROL));

	FUNC4(value,
			    1,
			    CRTC_VERT_SYNC_CONTROL,
			    CRTC_FORCE_VSYNC_NEXT_LINE_CLEAR);

	FUNC4(value,
			    0,
			    CRTC_VERT_SYNC_CONTROL,
			    CRTC_AUTO_FORCE_VSYNC_MODE);

	FUNC3(tg->ctx, FUNC0(mmCRTC_VERT_SYNC_CONTROL), value);

	/********************************************************************/
	value = FUNC2(tg->ctx, FUNC0(mmCRTC_TRIGB_CNTL));

	FUNC4(value,
			    TRIGGER_SOURCE_SELECT_LOGIC_ZERO,
			    CRTC_TRIGB_CNTL,
			    CRTC_TRIGB_SOURCE_SELECT);

	FUNC4(value,
			    TRIGGER_POLARITY_SELECT_LOGIC_ZERO,
			    CRTC_TRIGB_CNTL,
			    CRTC_TRIGB_POLARITY_SELECT);

	FUNC4(value,
			    1, /* clear trigger status */
			    CRTC_TRIGB_CNTL,
			    CRTC_TRIGB_CLEAR);

	FUNC3(tg->ctx, FUNC0(mmCRTC_TRIGB_CNTL), value);
}