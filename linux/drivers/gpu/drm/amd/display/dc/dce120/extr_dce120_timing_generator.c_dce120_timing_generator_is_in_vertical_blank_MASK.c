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
typedef  int uint32_t ;
struct timing_generator {int /*<<< orphan*/  ctx; } ;
struct TYPE_2__ {int /*<<< orphan*/  crtc; } ;
struct dce110_timing_generator {TYPE_1__ offsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC0_CRTC_STATUS ; 
 int /*<<< orphan*/  CRTC_V_BLANK ; 
 struct dce110_timing_generator* FUNC0 (struct timing_generator*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTC0_CRTC_STATUS ; 

__attribute__((used)) static bool FUNC3(
		struct timing_generator *tg)
{
	uint32_t field = 0;
	struct dce110_timing_generator *tg110 = FUNC0(tg);
	uint32_t value = FUNC1(
					tg->ctx,
					mmCRTC0_CRTC_STATUS,
					tg110->offsets.crtc);

	field = FUNC2(value, CRTC0_CRTC_STATUS, CRTC_V_BLANK);
	return field == 1;
}