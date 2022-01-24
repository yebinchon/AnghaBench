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
struct timing_generator {int /*<<< orphan*/  ctx; } ;
struct dce110_timing_generator {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRTC_STATIC_SCREEN_CONTROL ; 
 int /*<<< orphan*/  CRTC_STATIC_SCREEN_EVENT_MASK ; 
 int /*<<< orphan*/  CRTC_STATIC_SCREEN_FRAME_COUNT ; 
 struct dce110_timing_generator* FUNC1 (struct timing_generator*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  mmCRTC_STATIC_SCREEN_CONTROL ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(
	struct timing_generator *tg,
	uint32_t value)
{
	struct dce110_timing_generator *tg110 = FUNC1(tg);
	uint32_t static_screen_cntl = 0;
	uint32_t addr = 0;

	addr = FUNC0(mmCRTC_STATIC_SCREEN_CONTROL);
	static_screen_cntl = FUNC2(tg->ctx, addr);

	FUNC4(static_screen_cntl,
				value,
				CRTC_STATIC_SCREEN_CONTROL,
				CRTC_STATIC_SCREEN_EVENT_MASK);

	FUNC4(static_screen_cntl,
				2,
				CRTC_STATIC_SCREEN_CONTROL,
				CRTC_STATIC_SCREEN_FRAME_COUNT);

	FUNC3(tg->ctx, addr, static_screen_cntl);
}