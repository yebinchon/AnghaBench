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
typedef  int u32 ;
struct sti_tvout {int dummy; } ;
typedef  enum sti_tvout_video_out_type { ____Placeholder_sti_tvout_video_out_type } sti_tvout_video_out_type ;

/* Variables and functions */
#define  STI_TVOUT_VIDEO_OUT_RGB 129 
#define  STI_TVOUT_VIDEO_OUT_YUV 128 
 int TVO_VIP_SEL_INPUT_AUX ; 
 int TVO_VIP_SEL_INPUT_BYPASSED ; 
 int TVO_VIP_SEL_INPUT_BYPASS_MASK ; 
 int TVO_VIP_SEL_INPUT_MAIN ; 
 int TVO_VIP_SEL_INPUT_MASK ; 
 int FUNC0 (struct sti_tvout*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sti_tvout*,int,int) ; 

__attribute__((used)) static void FUNC2(struct sti_tvout *tvout,
				    int reg,
				    bool main_path,
				    enum sti_tvout_video_out_type video_out)
{
	u32 sel_input;
	u32 val = FUNC0(tvout, reg);

	if (main_path)
		sel_input = TVO_VIP_SEL_INPUT_MAIN;
	else
		sel_input = TVO_VIP_SEL_INPUT_AUX;

	switch (video_out) {
	case STI_TVOUT_VIDEO_OUT_RGB:
		sel_input |= TVO_VIP_SEL_INPUT_BYPASSED;
		break;
	case STI_TVOUT_VIDEO_OUT_YUV:
		sel_input &= ~TVO_VIP_SEL_INPUT_BYPASSED;
		break;
	}

	/* on stih407 chip the sel_input bypass mode logic is inverted */
	sel_input = sel_input ^ TVO_VIP_SEL_INPUT_BYPASS_MASK;

	val &= ~TVO_VIP_SEL_INPUT_MASK;
	val |= sel_input;
	FUNC1(tvout, val, reg);
}