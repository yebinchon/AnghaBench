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
typedef  enum crtc_state { ____Placeholder_crtc_state } crtc_state ;

/* Variables and functions */
#define  CRTC_STATE_VACTIVE 129 
#define  CRTC_STATE_VBLANK 128 
 struct optc* FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  OTG_STATUS ; 
 int /*<<< orphan*/  OTG_V_ACTIVE_DISP ; 
 int /*<<< orphan*/  OTG_V_BLANK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 

void FUNC2(struct timing_generator *optc,
		enum crtc_state state)
{
	struct optc *optc1 = FUNC0(optc);

	switch (state) {
	case CRTC_STATE_VBLANK:
		FUNC1(OTG_STATUS,
				OTG_V_BLANK, 1,
				1, 100000); /* 1 vupdate at 10hz */
		break;

	case CRTC_STATE_VACTIVE:
		FUNC1(OTG_STATUS,
				OTG_V_ACTIVE_DISP, 1,
				1, 100000); /* 1 vupdate at 10hz */
		break;

	default:
		break;
	}
}