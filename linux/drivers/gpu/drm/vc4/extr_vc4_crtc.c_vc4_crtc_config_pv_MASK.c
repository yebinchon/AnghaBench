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
struct vc4_encoder {scalar_t__ type; int clock_select; } ;
struct vc4_crtc {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int flags; int htotal; int hsync_end; int hsync_start; int hdisplay; int crtc_vtotal; int crtc_vsync_end; int crtc_vsync_start; int crtc_vdisplay; } ;
struct drm_crtc_state {struct drm_display_mode adjusted_mode; } ;
struct drm_crtc {struct drm_crtc_state* state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int DRM_MODE_FLAG_DBLCLK ; 
 int DRM_MODE_FLAG_INTERLACE ; 
 int /*<<< orphan*/  PV_CONTROL ; 
 int /*<<< orphan*/  PV_CONTROL_CLK_SELECT ; 
 int PV_CONTROL_CLR_AT_START ; 
 int PV_CONTROL_EN ; 
 int PV_CONTROL_FIFO_CLR ; 
 int /*<<< orphan*/  PV_CONTROL_FIFO_LEVEL ; 
 int /*<<< orphan*/  PV_CONTROL_FORMAT ; 
 int PV_CONTROL_FORMAT_24 ; 
 int PV_CONTROL_FORMAT_DSIV_24 ; 
 int /*<<< orphan*/  PV_CONTROL_PIXEL_REP ; 
 int PV_CONTROL_TRIGGER_UNDERFLOW ; 
 int PV_CONTROL_WAIT_HSTART ; 
 int /*<<< orphan*/  PV_HACT_ACT ; 
 int /*<<< orphan*/  PV_HORZA ; 
 int /*<<< orphan*/  PV_HORZA_HBP ; 
 int /*<<< orphan*/  PV_HORZA_HSYNC ; 
 int /*<<< orphan*/  PV_HORZB ; 
 int /*<<< orphan*/  PV_HORZB_HACTIVE ; 
 int /*<<< orphan*/  PV_HORZB_HFP ; 
 int PV_VCONTROL_CONTINUOUS ; 
 int PV_VCONTROL_DSI ; 
 int PV_VCONTROL_INTERLACE ; 
 int /*<<< orphan*/  PV_VCONTROL_ODD_DELAY ; 
 int /*<<< orphan*/  PV_VERTA ; 
 int /*<<< orphan*/  PV_VERTA_EVEN ; 
 int /*<<< orphan*/  PV_VERTA_VBP ; 
 int /*<<< orphan*/  PV_VERTA_VSYNC ; 
 int /*<<< orphan*/  PV_VERTB ; 
 int /*<<< orphan*/  PV_VERTB_EVEN ; 
 int /*<<< orphan*/  PV_VERTB_VACTIVE ; 
 int /*<<< orphan*/  PV_VERTB_VFP ; 
 int /*<<< orphan*/  PV_VSYNCD_EVEN ; 
 int /*<<< orphan*/  PV_V_CONTROL ; 
 scalar_t__ VC4_ENCODER_TYPE_DSI0 ; 
 scalar_t__ VC4_ENCODER_TYPE_DSI1 ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct vc4_crtc* FUNC2 (struct drm_crtc*) ; 
 struct vc4_encoder* FUNC3 (struct drm_encoder*) ; 
 struct drm_encoder* FUNC4 (struct drm_crtc*) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct drm_crtc *crtc)
{
	struct drm_encoder *encoder = FUNC4(crtc);
	struct vc4_encoder *vc4_encoder = FUNC3(encoder);
	struct vc4_crtc *vc4_crtc = FUNC2(crtc);
	struct drm_crtc_state *state = crtc->state;
	struct drm_display_mode *mode = &state->adjusted_mode;
	bool interlace = mode->flags & DRM_MODE_FLAG_INTERLACE;
	u32 pixel_rep = (mode->flags & DRM_MODE_FLAG_DBLCLK) ? 2 : 1;
	bool is_dsi = (vc4_encoder->type == VC4_ENCODER_TYPE_DSI0 ||
		       vc4_encoder->type == VC4_ENCODER_TYPE_DSI1);
	u32 format = is_dsi ? PV_CONTROL_FORMAT_DSIV_24 : PV_CONTROL_FORMAT_24;

	/* Reset the PV fifo. */
	FUNC0(PV_CONTROL, 0);
	FUNC0(PV_CONTROL, PV_CONTROL_FIFO_CLR | PV_CONTROL_EN);
	FUNC0(PV_CONTROL, 0);

	FUNC0(PV_HORZA,
		   FUNC1((mode->htotal -
				  mode->hsync_end) * pixel_rep,
				 PV_HORZA_HBP) |
		   FUNC1((mode->hsync_end -
				  mode->hsync_start) * pixel_rep,
				 PV_HORZA_HSYNC));
	FUNC0(PV_HORZB,
		   FUNC1((mode->hsync_start -
				  mode->hdisplay) * pixel_rep,
				 PV_HORZB_HFP) |
		   FUNC1(mode->hdisplay * pixel_rep, PV_HORZB_HACTIVE));

	FUNC0(PV_VERTA,
		   FUNC1(mode->crtc_vtotal - mode->crtc_vsync_end,
				 PV_VERTA_VBP) |
		   FUNC1(mode->crtc_vsync_end - mode->crtc_vsync_start,
				 PV_VERTA_VSYNC));
	FUNC0(PV_VERTB,
		   FUNC1(mode->crtc_vsync_start - mode->crtc_vdisplay,
				 PV_VERTB_VFP) |
		   FUNC1(mode->crtc_vdisplay, PV_VERTB_VACTIVE));

	if (interlace) {
		FUNC0(PV_VERTA_EVEN,
			   FUNC1(mode->crtc_vtotal -
					 mode->crtc_vsync_end - 1,
					 PV_VERTA_VBP) |
			   FUNC1(mode->crtc_vsync_end -
					 mode->crtc_vsync_start,
					 PV_VERTA_VSYNC));
		FUNC0(PV_VERTB_EVEN,
			   FUNC1(mode->crtc_vsync_start -
					 mode->crtc_vdisplay,
					 PV_VERTB_VFP) |
			   FUNC1(mode->crtc_vdisplay, PV_VERTB_VACTIVE));

		/* We set up first field even mode for HDMI.  VEC's
		 * NTSC mode would want first field odd instead, once
		 * we support it (to do so, set ODD_FIRST and put the
		 * delay in VSYNCD_EVEN instead).
		 */
		FUNC0(PV_V_CONTROL,
			   PV_VCONTROL_CONTINUOUS |
			   (is_dsi ? PV_VCONTROL_DSI : 0) |
			   PV_VCONTROL_INTERLACE |
			   FUNC1(mode->htotal * pixel_rep / 2,
					 PV_VCONTROL_ODD_DELAY));
		FUNC0(PV_VSYNCD_EVEN, 0);
	} else {
		FUNC0(PV_V_CONTROL,
			   PV_VCONTROL_CONTINUOUS |
			   (is_dsi ? PV_VCONTROL_DSI : 0));
	}

	FUNC0(PV_HACT_ACT, mode->hdisplay * pixel_rep);

	FUNC0(PV_CONTROL,
		   FUNC1(format, PV_CONTROL_FORMAT) |
		   FUNC1(FUNC5(format),
				 PV_CONTROL_FIFO_LEVEL) |
		   FUNC1(pixel_rep - 1, PV_CONTROL_PIXEL_REP) |
		   PV_CONTROL_CLR_AT_START |
		   PV_CONTROL_TRIGGER_UNDERFLOW |
		   PV_CONTROL_WAIT_HSTART |
		   FUNC1(vc4_encoder->clock_select,
				 PV_CONTROL_CLK_SELECT) |
		   PV_CONTROL_FIFO_CLR |
		   PV_CONTROL_EN);
}