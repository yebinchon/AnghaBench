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
struct TYPE_2__ {int /*<<< orphan*/  crtc; } ;
struct dce110_timing_generator {TYPE_1__ offsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC0_CRTC_BLANK_CONTROL ; 
 int /*<<< orphan*/  CRTC_BLANK_DATA_EN ; 
 int /*<<< orphan*/  CRTC_CURRENT_BLANK_STATE ; 
 struct dce110_timing_generator* FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTC0_CRTC_BLANK_CONTROL ; 

bool FUNC3(struct timing_generator *tg)
{
	struct dce110_timing_generator *tg110 = FUNC0(tg);
	uint32_t value = FUNC1(
			tg->ctx,
			mmCRTC0_CRTC_BLANK_CONTROL,
			tg110->offsets.crtc);

	if (FUNC2(
		value,
		CRTC0_CRTC_BLANK_CONTROL,
		CRTC_BLANK_DATA_EN) == 1 &&
	    FUNC2(
		value,
		CRTC0_CRTC_BLANK_CONTROL,
		CRTC_CURRENT_BLANK_STATE) == 1)
			return true;

	return false;
}