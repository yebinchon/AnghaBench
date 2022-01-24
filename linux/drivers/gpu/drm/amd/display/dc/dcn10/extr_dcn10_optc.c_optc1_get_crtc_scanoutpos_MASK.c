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
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;
struct crtc_position {int /*<<< orphan*/  vertical_count; int /*<<< orphan*/  horizontal_count; } ;

/* Variables and functions */
 struct optc* FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  OTG_V_BLANK_END ; 
 int /*<<< orphan*/  OTG_V_BLANK_START ; 
 int /*<<< orphan*/  OTG_V_BLANK_START_END ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct timing_generator*,struct crtc_position*) ; 

void FUNC3(
	struct timing_generator *optc,
	uint32_t *v_blank_start,
	uint32_t *v_blank_end,
	uint32_t *h_position,
	uint32_t *v_position)
{
	struct optc *optc1 = FUNC0(optc);
	struct crtc_position position;

	FUNC1(OTG_V_BLANK_START_END,
			OTG_V_BLANK_START, v_blank_start,
			OTG_V_BLANK_END, v_blank_end);

	FUNC2(optc, &position);

	*h_position = position.horizontal_count;
	*v_position = position.vertical_count;
}