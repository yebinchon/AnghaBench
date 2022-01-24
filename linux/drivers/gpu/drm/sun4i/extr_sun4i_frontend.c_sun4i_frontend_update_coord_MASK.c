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
struct sun4i_frontend {int /*<<< orphan*/  regs; } ;
struct drm_plane_state {int crtc_w; int crtc_h; int src_w; int src_h; struct drm_framebuffer* fb; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct drm_framebuffer {TYPE_1__* format; } ;
struct TYPE_2__ {int /*<<< orphan*/  vsub; int /*<<< orphan*/  hsub; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_CH0_HORZFACT_REG ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_CH0_INSIZE_REG ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_CH0_OUTSIZE_REG ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_CH0_VERTFACT_REG ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_CH1_HORZFACT_REG ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_CH1_INSIZE_REG ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_CH1_OUTSIZE_REG ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_CH1_VERTFACT_REG ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_FRM_CTRL_REG ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_FRM_CTRL_REG_RDY ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct sun4i_frontend *frontend,
				 struct drm_plane *plane)
{
	struct drm_plane_state *state = plane->state;
	struct drm_framebuffer *fb = state->fb;
	uint32_t luma_width, luma_height;
	uint32_t chroma_width, chroma_height;

	/* Set height and width */
	FUNC1("Frontend size W: %u H: %u\n",
			 state->crtc_w, state->crtc_h);

	luma_width = state->src_w >> 16;
	luma_height = state->src_h >> 16;

	chroma_width = FUNC0(luma_width, fb->format->hsub);
	chroma_height = FUNC0(luma_height, fb->format->vsub);

	FUNC4(frontend->regs, SUN4I_FRONTEND_CH0_INSIZE_REG,
		     FUNC2(luma_height, luma_width));
	FUNC4(frontend->regs, SUN4I_FRONTEND_CH1_INSIZE_REG,
		     FUNC2(chroma_height, chroma_width));

	FUNC4(frontend->regs, SUN4I_FRONTEND_CH0_OUTSIZE_REG,
		     FUNC3(state->crtc_h, state->crtc_w));
	FUNC4(frontend->regs, SUN4I_FRONTEND_CH1_OUTSIZE_REG,
		     FUNC3(state->crtc_h, state->crtc_w));

	FUNC4(frontend->regs, SUN4I_FRONTEND_CH0_HORZFACT_REG,
		     (luma_width << 16) / state->crtc_w);
	FUNC4(frontend->regs, SUN4I_FRONTEND_CH1_HORZFACT_REG,
		     (chroma_width << 16) / state->crtc_w);

	FUNC4(frontend->regs, SUN4I_FRONTEND_CH0_VERTFACT_REG,
		     (luma_height << 16) / state->crtc_h);
	FUNC4(frontend->regs, SUN4I_FRONTEND_CH1_VERTFACT_REG,
		     (chroma_height << 16) / state->crtc_h);

	FUNC5(frontend->regs, SUN4I_FRONTEND_FRM_CTRL_REG,
			  SUN4I_FRONTEND_FRM_CTRL_REG_RDY,
			  SUN4I_FRONTEND_FRM_CTRL_REG_RDY);
}