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
struct timing_generator {int /*<<< orphan*/  ctx; } ;
struct TYPE_2__ {int /*<<< orphan*/  crtc; } ;
struct dce110_timing_generator {TYPE_1__ offsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC0_CRTC_BLANK_CONTROL ; 
 int /*<<< orphan*/  CRTC0_CRTC_DOUBLE_BUFFER_CONTROL ; 
 int /*<<< orphan*/  CRTC_BLANK_DATA_DOUBLE_BUFFER_EN ; 
 int /*<<< orphan*/  CRTC_BLANK_DATA_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct dce110_timing_generator* FUNC1 (struct timing_generator*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTC0_CRTC_BLANK_CONTROL ; 

void FUNC3(struct timing_generator *tg,
		bool enable_blanking)
{
	struct dce110_timing_generator *tg110 = FUNC1(tg);

	FUNC0(
		CRTC0_CRTC_DOUBLE_BUFFER_CONTROL,
		CRTC_BLANK_DATA_DOUBLE_BUFFER_EN, 1);

	if (enable_blanking)
		FUNC0(CRTC0_CRTC_BLANK_CONTROL, CRTC_BLANK_DATA_EN, 1);
	else
		FUNC2(tg->ctx, mmCRTC0_CRTC_BLANK_CONTROL,
			tg110->offsets.crtc, 0);
}