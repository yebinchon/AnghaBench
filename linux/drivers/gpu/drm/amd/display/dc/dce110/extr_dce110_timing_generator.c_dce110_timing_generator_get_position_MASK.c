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
struct crtc_position {void* nominal_vcount; void* vertical_count; void* horizontal_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC_HORZ_COUNT ; 
 int /*<<< orphan*/  CRTC_NOM_VERT_POSITION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRTC_STATUS_POSITION ; 
 int /*<<< orphan*/  CRTC_VERT_COUNT ; 
 int /*<<< orphan*/  CRTC_VERT_COUNT_NOM ; 
 struct dce110_timing_generator* FUNC1 (struct timing_generator*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTC_NOM_VERT_POSITION ; 
 int /*<<< orphan*/  mmCRTC_STATUS_POSITION ; 

void FUNC4(struct timing_generator *tg,
	struct crtc_position *position)
{
	uint32_t value;
	struct dce110_timing_generator *tg110 = FUNC1(tg);

	value = FUNC2(tg->ctx, FUNC0(mmCRTC_STATUS_POSITION));

	position->horizontal_count = FUNC3(
			value,
			CRTC_STATUS_POSITION,
			CRTC_HORZ_COUNT);

	position->vertical_count = FUNC3(
			value,
			CRTC_STATUS_POSITION,
			CRTC_VERT_COUNT);

	value = FUNC2(tg->ctx, FUNC0(mmCRTC_NOM_VERT_POSITION));

	position->nominal_vcount = FUNC3(
			value,
			CRTC_NOM_VERT_POSITION,
			CRTC_VERT_COUNT_NOM);
}