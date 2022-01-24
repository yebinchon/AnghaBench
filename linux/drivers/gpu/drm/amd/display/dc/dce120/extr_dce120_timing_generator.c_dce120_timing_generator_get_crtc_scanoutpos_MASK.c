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
struct crtc_position {int /*<<< orphan*/  vertical_count; int /*<<< orphan*/  horizontal_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC0_CRTC_V_BLANK_START_END ; 
 int /*<<< orphan*/  CRTC_V_BLANK_END ; 
 int /*<<< orphan*/  CRTC_V_BLANK_START ; 
 struct dce110_timing_generator* FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  FUNC1 (struct timing_generator*,struct crtc_position*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTC0_CRTC_V_BLANK_START_END ; 

void FUNC4(
	struct timing_generator *tg,
	uint32_t *v_blank_start,
	uint32_t *v_blank_end,
	uint32_t *h_position,
	uint32_t *v_position)
{
	struct dce110_timing_generator *tg110 = FUNC0(tg);
	struct crtc_position position;

	uint32_t v_blank_start_end = FUNC2(
			tg->ctx,
			mmCRTC0_CRTC_V_BLANK_START_END,
			tg110->offsets.crtc);

	*v_blank_start = FUNC3(v_blank_start_end,
					     CRTC0_CRTC_V_BLANK_START_END,
					     CRTC_V_BLANK_START);
	*v_blank_end = FUNC3(v_blank_start_end,
					   CRTC0_CRTC_V_BLANK_START_END,
					   CRTC_V_BLANK_END);

	FUNC1(
			tg, &position);

	*h_position = position.horizontal_count;
	*v_position = position.vertical_count;
}