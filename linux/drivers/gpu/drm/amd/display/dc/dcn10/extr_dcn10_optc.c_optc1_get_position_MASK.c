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
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;
struct crtc_position {int /*<<< orphan*/  nominal_vcount; int /*<<< orphan*/  vertical_count; int /*<<< orphan*/  horizontal_count; } ;

/* Variables and functions */
 struct optc* FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  OTG_HORZ_COUNT ; 
 int /*<<< orphan*/  OTG_NOM_VERT_POSITION ; 
 int /*<<< orphan*/  OTG_STATUS_POSITION ; 
 int /*<<< orphan*/  OTG_VERT_COUNT ; 
 int /*<<< orphan*/  OTG_VERT_COUNT_NOM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct timing_generator *optc,
		struct crtc_position *position)
{
	struct optc *optc1 = FUNC0(optc);

	FUNC2(OTG_STATUS_POSITION,
			OTG_HORZ_COUNT, &position->horizontal_count,
			OTG_VERT_COUNT, &position->vertical_count);

	FUNC1(OTG_NOM_VERT_POSITION,
			OTG_VERT_COUNT_NOM, &position->nominal_vcount);
}