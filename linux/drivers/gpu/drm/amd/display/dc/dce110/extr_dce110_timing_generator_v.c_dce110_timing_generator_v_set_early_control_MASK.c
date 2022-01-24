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

/* Variables and functions */
 int /*<<< orphan*/  CRTCV_CONTROL ; 
 int /*<<< orphan*/  CRTC_HBLANK_EARLY_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTC_CONTROL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
		struct timing_generator *tg,
		uint32_t early_cntl)
{
	uint32_t regval;
	uint32_t address = mmCRTC_CONTROL;

	regval = FUNC0(tg->ctx, address);
	FUNC2(regval, early_cntl,
			CRTCV_CONTROL, CRTC_HBLANK_EARLY_CONTROL);
	FUNC1(tg->ctx, address, regval);
}