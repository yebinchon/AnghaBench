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
struct TYPE_2__ {int /*<<< orphan*/  pixel_format; } ;
struct mdp_format {scalar_t__ is_yuv; TYPE_1__ base; } ;
struct mdp5_kms {int dummy; } ;
struct drm_format_info {int hsub; int vsub; } ;
typedef  enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;

/* Variables and functions */
 int COMP_1_2 ; 
 int COMP_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int (*) (int)) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 struct drm_format_info* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct mdp5_kms*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC17(struct mdp5_kms *mdp5_kms, enum mdp5_pipe pipe,
	const struct mdp_format *format,
	uint32_t src_w, int pe_left[COMP_MAX], int pe_right[COMP_MAX],
	uint32_t src_h, int pe_top[COMP_MAX], int pe_bottom[COMP_MAX])
{
	const struct drm_format_info *info = FUNC15(format->base.pixel_format);
	uint32_t lr, tb, req;
	int i;

	for (i = 0; i < COMP_MAX; i++) {
		uint32_t roi_w = src_w;
		uint32_t roi_h = src_h;

		if (format->is_yuv && i == COMP_1_2) {
			roi_w /= info->hsub;
			roi_h /= info->vsub;
		}

		lr  = (pe_left[i] >= 0) ?
			FUNC3(pe_left[i]) :
			FUNC2(pe_left[i]);

		lr |= (pe_right[i] >= 0) ?
			FUNC5(pe_right[i]) :
			FUNC4(pe_right[i]);

		tb  = (pe_top[i] >= 0) ?
			FUNC11(pe_top[i]) :
			FUNC10(pe_top[i]);

		tb |= (pe_bottom[i] >= 0) ?
			FUNC9(pe_bottom[i]) :
			FUNC8(pe_bottom[i]);

		req  = FUNC6(roi_w +
				pe_left[i] + pe_right[i]);

		req |= FUNC7(roi_h +
				pe_top[i] + pe_bottom[i]);

		FUNC16(mdp5_kms, FUNC12(pipe, i), lr);
		FUNC16(mdp5_kms, FUNC14(pipe, i), tb);
		FUNC16(mdp5_kms, FUNC13(pipe, i), req);

		FUNC0("comp-%d (L/R): rpt=%d/%d, ovf=%d/%d, req=%d", i,
			FUNC1(lr,  MDP5_PIPE_SW_PIX_EXT_LR_LEFT_RPT),
			FUNC1(lr,  MDP5_PIPE_SW_PIX_EXT_LR_RIGHT_RPT),
			FUNC1(lr,  MDP5_PIPE_SW_PIX_EXT_LR_LEFT_OVF),
			FUNC1(lr,  MDP5_PIPE_SW_PIX_EXT_LR_RIGHT_OVF),
			FUNC1(req, MDP5_PIPE_SW_PIX_EXT_REQ_PIXELS_LEFT_RIGHT));

		FUNC0("comp-%d (T/B): rpt=%d/%d, ovf=%d/%d, req=%d", i,
			FUNC1(tb,  MDP5_PIPE_SW_PIX_EXT_TB_TOP_RPT),
			FUNC1(tb,  MDP5_PIPE_SW_PIX_EXT_TB_BOTTOM_RPT),
			FUNC1(tb,  MDP5_PIPE_SW_PIX_EXT_TB_TOP_OVF),
			FUNC1(tb,  MDP5_PIPE_SW_PIX_EXT_TB_BOTTOM_OVF),
			FUNC1(req, MDP5_PIPE_SW_PIX_EXT_REQ_PIXELS_TOP_BOTTOM));
	}
}