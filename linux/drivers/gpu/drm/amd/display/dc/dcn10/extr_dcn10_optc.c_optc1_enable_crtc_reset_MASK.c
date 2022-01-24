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
typedef  int uint32_t ;
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;
struct crtc_trigger_info {int event; int delay; } ;

/* Variables and functions */
#define  CRTC_EVENT_VSYNC_FALLING 131 
#define  CRTC_EVENT_VSYNC_RISING 130 
 struct optc* FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  OTG_AUTO_FORCE_VSYNC_MODE ; 
 int /*<<< orphan*/  OTG_FORCE_COUNT_NOW_CNTL ; 
 int /*<<< orphan*/  OTG_FORCE_COUNT_NOW_MODE ; 
 int /*<<< orphan*/  OTG_TRIGA_CNTL ; 
 int /*<<< orphan*/  OTG_TRIGA_FALLING_EDGE_DETECT_CNTL ; 
 int /*<<< orphan*/  OTG_TRIGA_RISING_EDGE_DETECT_CNTL ; 
 int /*<<< orphan*/  OTG_TRIGA_SOURCE_PIPE_SELECT ; 
 int /*<<< orphan*/  OTG_TRIGA_SOURCE_SELECT ; 
 int /*<<< orphan*/  OTG_VERT_SYNC_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
#define  TRIGGER_DELAY_NEXT_LINE 129 
#define  TRIGGER_DELAY_NEXT_PIXEL 128 

void FUNC3(
		struct timing_generator *optc,
		int source_tg_inst,
		struct crtc_trigger_info *crtc_tp)
{
	struct optc *optc1 = FUNC0(optc);
	uint32_t falling_edge = 0;
	uint32_t rising_edge = 0;

	switch (crtc_tp->event) {

	case CRTC_EVENT_VSYNC_RISING:
		rising_edge = 1;
		break;

	case CRTC_EVENT_VSYNC_FALLING:
		falling_edge = 1;
		break;
	}

	FUNC2(OTG_TRIGA_CNTL, 0,
		 /* vsync signal from selected OTG pipe based
		  * on OTG_TRIG_SOURCE_PIPE_SELECT setting
		  */
		  OTG_TRIGA_SOURCE_SELECT, 20,
		  OTG_TRIGA_SOURCE_PIPE_SELECT, source_tg_inst,
		  /* always detect falling edge */
		  OTG_TRIGA_RISING_EDGE_DETECT_CNTL, rising_edge,
		  OTG_TRIGA_FALLING_EDGE_DETECT_CNTL, falling_edge);

	switch (crtc_tp->delay) {
	case TRIGGER_DELAY_NEXT_LINE:
		FUNC1(OTG_VERT_SYNC_CONTROL, 0,
				OTG_AUTO_FORCE_VSYNC_MODE, 1);
		break;
	case TRIGGER_DELAY_NEXT_PIXEL:
		FUNC1(OTG_FORCE_COUNT_NOW_CNTL, 0,
			/* force H count to H_TOTAL and V count to V_TOTAL in
			 * progressive mode and V_TOTAL-1 in interlaced mode
			 */
			OTG_FORCE_COUNT_NOW_MODE, 2);
		break;
	}
}