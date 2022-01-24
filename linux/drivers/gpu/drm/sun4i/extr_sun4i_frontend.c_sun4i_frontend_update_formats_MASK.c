#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u32 ;
struct sun4i_frontend {int /*<<< orphan*/  regs; TYPE_2__* data; } ;
struct drm_plane_state {struct drm_framebuffer* fb; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct drm_framebuffer {int /*<<< orphan*/  modifier; struct drm_format_info* format; } ;
struct drm_format_info {scalar_t__ is_yuv; } ;
struct TYPE_4__ {TYPE_1__* ch_phase; } ;
struct TYPE_3__ {int horzphase; int* vertphase; } ;

/* Variables and functions */
 unsigned int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int SUN4I_FRONTEND_BYPASS_CSC_EN ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_BYPASS_REG ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_CH0_HORZPHASE_REG ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_CH0_VERTPHASE0_REG ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_CH0_VERTPHASE1_REG ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_CH1_HORZPHASE_REG ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_CH1_VERTPHASE0_REG ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_CH1_VERTPHASE1_REG ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_INPUT_FMT_REG ; 
 int /*<<< orphan*/  SUN4I_FRONTEND_OUTPUT_FMT_REG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct drm_format_info const*,int*) ; 
 int FUNC6 (struct drm_format_info const*,int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (struct drm_format_info const*,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int*) ; 
 int* sunxi_bt601_yuv2rgb_coef ; 

int FUNC9(struct sun4i_frontend *frontend,
				  struct drm_plane *plane, uint32_t out_fmt)
{
	struct drm_plane_state *state = plane->state;
	struct drm_framebuffer *fb = state->fb;
	const struct drm_format_info *format = fb->format;
	uint64_t modifier = fb->modifier;
	u32 out_fmt_val;
	u32 in_fmt_val, in_mod_val, in_ps_val;
	unsigned int i;
	u32 bypass;
	int ret;

	ret = FUNC5(format, &in_fmt_val);
	if (ret) {
		FUNC1("Invalid input format\n");
		return ret;
	}

	ret = FUNC6(format, modifier,
						      &in_mod_val);
	if (ret) {
		FUNC1("Invalid input mode\n");
		return ret;
	}

	ret = FUNC7(format, &in_ps_val);
	if (ret) {
		FUNC1("Invalid pixel sequence\n");
		return ret;
	}

	ret = FUNC8(out_fmt, &out_fmt_val);
	if (ret) {
		FUNC1("Invalid output format\n");
		return ret;
	}

	/*
	 * I have no idea what this does exactly, but it seems to be
	 * related to the scaler FIR filter phase parameters.
	 */
	FUNC4(frontend->regs, SUN4I_FRONTEND_CH0_HORZPHASE_REG,
		     frontend->data->ch_phase[0].horzphase);
	FUNC4(frontend->regs, SUN4I_FRONTEND_CH1_HORZPHASE_REG,
		     frontend->data->ch_phase[1].horzphase);
	FUNC4(frontend->regs, SUN4I_FRONTEND_CH0_VERTPHASE0_REG,
		     frontend->data->ch_phase[0].vertphase[0]);
	FUNC4(frontend->regs, SUN4I_FRONTEND_CH1_VERTPHASE0_REG,
		     frontend->data->ch_phase[1].vertphase[0]);
	FUNC4(frontend->regs, SUN4I_FRONTEND_CH0_VERTPHASE1_REG,
		     frontend->data->ch_phase[0].vertphase[1]);
	FUNC4(frontend->regs, SUN4I_FRONTEND_CH1_VERTPHASE1_REG,
		     frontend->data->ch_phase[1].vertphase[1]);

	/*
	 * Checking the input format is sufficient since we currently only
	 * support RGB output formats to the backend. If YUV output formats
	 * ever get supported, an YUV input and output would require bypassing
	 * the CSC engine too.
	 */
	if (format->is_yuv) {
		/* Setup the CSC engine for YUV to RGB conversion. */
		bypass = 0;

		for (i = 0; i < FUNC0(sunxi_bt601_yuv2rgb_coef); i++)
			FUNC4(frontend->regs,
				     FUNC2(i),
				     sunxi_bt601_yuv2rgb_coef[i]);
	} else {
		bypass = SUN4I_FRONTEND_BYPASS_CSC_EN;
	}

	FUNC3(frontend->regs, SUN4I_FRONTEND_BYPASS_REG,
			   SUN4I_FRONTEND_BYPASS_CSC_EN, bypass);

	FUNC4(frontend->regs, SUN4I_FRONTEND_INPUT_FMT_REG,
		     in_mod_val | in_fmt_val | in_ps_val);

	/*
	 * TODO: It look like the A31 and A80 at least will need the
	 * bit 7 (ALPHA_EN) enabled when using a format with alpha (so
	 * ARGB8888).
	 */
	FUNC4(frontend->regs, SUN4I_FRONTEND_OUTPUT_FMT_REG,
		     out_fmt_val);

	return 0;
}