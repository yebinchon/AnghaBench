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
 int /*<<< orphan*/  CRTC_FORCE_COUNT_NOW_CNTL ; 
 int /*<<< orphan*/  CRTC_FORCE_COUNT_NOW_OCCURRED ; 
 int /*<<< orphan*/  CRTC_FORCE_VSYNC_NEXT_LINE_OCCURRED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRTC_VERT_SYNC_CONTROL ; 
 struct dce110_timing_generator* FUNC1 (struct timing_generator*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTC_FORCE_COUNT_NOW_CNTL ; 
 int /*<<< orphan*/  mmCRTC_VERT_SYNC_CONTROL ; 

bool FUNC4(
	struct timing_generator *tg)
{
	struct dce110_timing_generator *tg110 = FUNC1(tg);
	uint32_t value = FUNC2(tg->ctx,
			FUNC0(mmCRTC_FORCE_COUNT_NOW_CNTL));
	uint32_t value1 = FUNC2(tg->ctx,
			FUNC0(mmCRTC_VERT_SYNC_CONTROL));
	bool force = FUNC3(value,
					 CRTC_FORCE_COUNT_NOW_CNTL,
					 CRTC_FORCE_COUNT_NOW_OCCURRED) != 0;
	bool vert_sync = FUNC3(value1,
					     CRTC_VERT_SYNC_CONTROL,
					     CRTC_FORCE_VSYNC_NEXT_LINE_OCCURRED) != 0;

	return (force || vert_sync);
}