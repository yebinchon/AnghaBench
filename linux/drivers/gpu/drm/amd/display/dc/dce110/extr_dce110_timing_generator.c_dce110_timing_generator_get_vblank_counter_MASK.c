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
 int /*<<< orphan*/  CRTC_FRAME_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRTC_STATUS_FRAME_COUNT ; 
 struct dce110_timing_generator* FUNC1 (struct timing_generator*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTC_STATUS_FRAME_COUNT ; 

uint32_t FUNC4(struct timing_generator *tg)
{
	struct dce110_timing_generator *tg110 = FUNC1(tg);
	uint32_t addr = FUNC0(mmCRTC_STATUS_FRAME_COUNT);
	uint32_t value = FUNC2(tg->ctx, addr);
	uint32_t field = FUNC3(
			value, CRTC_STATUS_FRAME_COUNT, CRTC_FRAME_COUNT);

	return field;
}