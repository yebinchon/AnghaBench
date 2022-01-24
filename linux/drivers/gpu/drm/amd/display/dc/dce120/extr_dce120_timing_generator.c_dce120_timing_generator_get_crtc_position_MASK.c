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
struct crtc_position {void* nominal_vcount; void* vertical_count; void* horizontal_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC0_CRTC_NOM_VERT_POSITION ; 
 int /*<<< orphan*/  CRTC0_CRTC_STATUS_POSITION ; 
 int /*<<< orphan*/  CRTC_HORZ_COUNT ; 
 int /*<<< orphan*/  CRTC_VERT_COUNT ; 
 int /*<<< orphan*/  CRTC_VERT_COUNT_NOM ; 
 struct dce110_timing_generator* FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTC0_CRTC_NOM_VERT_POSITION ; 
 int /*<<< orphan*/  mmCRTC0_CRTC_STATUS_POSITION ; 

void FUNC3(
	struct timing_generator *tg,
	struct crtc_position *position)
{
	struct dce110_timing_generator *tg110 = FUNC0(tg);
	uint32_t value = FUNC1(
				tg->ctx,
				mmCRTC0_CRTC_STATUS_POSITION,
				tg110->offsets.crtc);

	position->horizontal_count = FUNC2(value,
			CRTC0_CRTC_STATUS_POSITION, CRTC_HORZ_COUNT);

	position->vertical_count = FUNC2(value,
			CRTC0_CRTC_STATUS_POSITION, CRTC_VERT_COUNT);

	value = FUNC1(
				tg->ctx,
				mmCRTC0_CRTC_NOM_VERT_POSITION,
				tg110->offsets.crtc);

	position->nominal_vcount = FUNC2(value,
			CRTC0_CRTC_NOM_VERT_POSITION, CRTC_VERT_COUNT_NOM);
}