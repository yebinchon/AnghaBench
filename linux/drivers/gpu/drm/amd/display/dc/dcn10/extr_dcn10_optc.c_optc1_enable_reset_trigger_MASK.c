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
typedef  scalar_t__ uint32_t ;
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;

/* Variables and functions */
 struct optc* FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  OTG_FORCE_COUNT_NOW_CNTL ; 
 int /*<<< orphan*/  OTG_FORCE_COUNT_NOW_MODE ; 
 int /*<<< orphan*/  OTG_TRIGA_CNTL ; 
 int /*<<< orphan*/  OTG_TRIGA_FALLING_EDGE_DETECT_CNTL ; 
 int /*<<< orphan*/  OTG_TRIGA_RISING_EDGE_DETECT_CNTL ; 
 int /*<<< orphan*/  OTG_TRIGA_SOURCE_PIPE_SELECT ; 
 int /*<<< orphan*/  OTG_TRIGA_SOURCE_SELECT ; 
 int /*<<< orphan*/  OTG_V_SYNC_A_CNTL ; 
 int /*<<< orphan*/  OTG_V_SYNC_A_POL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct timing_generator *optc, int source_tg_inst)
{
	struct optc *optc1 = FUNC0(optc);
	uint32_t falling_edge;

	FUNC1(OTG_V_SYNC_A_CNTL,
			OTG_V_SYNC_A_POL, &falling_edge);

	if (falling_edge)
		FUNC3(OTG_TRIGA_CNTL, 0,
				/* vsync signal from selected OTG pipe based
				 * on OTG_TRIG_SOURCE_PIPE_SELECT setting
				 */
				OTG_TRIGA_SOURCE_SELECT, 20,
				OTG_TRIGA_SOURCE_PIPE_SELECT, source_tg_inst,
				/* always detect falling edge */
				OTG_TRIGA_FALLING_EDGE_DETECT_CNTL, 1);
	else
		FUNC3(OTG_TRIGA_CNTL, 0,
				/* vsync signal from selected OTG pipe based
				 * on OTG_TRIG_SOURCE_PIPE_SELECT setting
				 */
				OTG_TRIGA_SOURCE_SELECT, 20,
				OTG_TRIGA_SOURCE_PIPE_SELECT, source_tg_inst,
				/* always detect rising edge */
				OTG_TRIGA_RISING_EDGE_DETECT_CNTL, 1);

	FUNC2(OTG_FORCE_COUNT_NOW_CNTL, 0,
			/* force H count to H_TOTAL and V count to V_TOTAL in
			 * progressive mode and V_TOTAL-1 in interlaced mode
			 */
			OTG_FORCE_COUNT_NOW_MODE, 2);
}