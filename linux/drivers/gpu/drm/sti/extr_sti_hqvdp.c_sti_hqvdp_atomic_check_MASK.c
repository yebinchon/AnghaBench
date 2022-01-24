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
struct sti_plane {int dummy; } ;
struct sti_hqvdp {int vtg_registered; int /*<<< orphan*/  clk_pix_main; int /*<<< orphan*/  vtg_nb; int /*<<< orphan*/  vtg; int /*<<< orphan*/  xp70_initialized; } ;
struct drm_plane_state {int crtc_x; int crtc_y; int src_x; int src_y; int src_w; int src_h; int /*<<< orphan*/  crtc_h; int /*<<< orphan*/  crtc_w; int /*<<< orphan*/  state; struct drm_framebuffer* fb; struct drm_crtc* crtc; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct drm_plane {TYPE_2__ base; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_display_mode {scalar_t__ clock; scalar_t__ vdisplay; scalar_t__ hdisplay; } ;
struct drm_crtc_state {struct drm_display_mode mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
struct drm_crtc {TYPE_1__ base; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int EINVAL ; 
 int MAX_HEIGHT ; 
 int MAX_WIDTH ; 
 int MIN_HEIGHT ; 
 int MIN_WIDTH ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct drm_crtc_state* FUNC6 (int /*<<< orphan*/ ,struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_framebuffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sti_hqvdp*,struct drm_display_mode*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sti_hqvdp*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sti_plane*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct drm_crtc*) ; 
 struct sti_hqvdp* FUNC13 (struct sti_plane*) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_crtc*) ; 
 struct sti_plane* FUNC15 (struct drm_plane*) ; 

__attribute__((used)) static int FUNC16(struct drm_plane *drm_plane,
				  struct drm_plane_state *state)
{
	struct sti_plane *plane = FUNC15(drm_plane);
	struct sti_hqvdp *hqvdp = FUNC13(plane);
	struct drm_crtc *crtc = state->crtc;
	struct drm_framebuffer *fb = state->fb;
	struct drm_crtc_state *crtc_state;
	struct drm_display_mode *mode;
	int dst_x, dst_y, dst_w, dst_h;
	int src_x, src_y, src_w, src_h;

	/* no need for further checks if the plane is being disabled */
	if (!crtc || !fb)
		return 0;

	crtc_state = FUNC6(state->state, crtc);
	mode = &crtc_state->mode;
	dst_x = state->crtc_x;
	dst_y = state->crtc_y;
	dst_w = FUNC3(state->crtc_w, 0, mode->hdisplay - dst_x);
	dst_h = FUNC3(state->crtc_h, 0, mode->vdisplay - dst_y);
	/* src_x are in 16.16 format */
	src_x = state->src_x >> 16;
	src_y = state->src_y >> 16;
	src_w = state->src_w >> 16;
	src_h = state->src_h >> 16;

	if (mode->clock && !FUNC8(hqvdp, mode,
						       src_w, src_h,
						       dst_w, dst_h)) {
		FUNC2("Scaling beyond HW capabilities\n");
		return -EINVAL;
	}

	if (!FUNC7(fb, 0)) {
		FUNC2("Can't get CMA GEM object for fb\n");
		return -EINVAL;
	}

	/*
	 * Input / output size
	 * Align to upper even value
	 */
	dst_w = FUNC0(dst_w, 2);
	dst_h = FUNC0(dst_h, 2);

	if ((src_w > MAX_WIDTH) || (src_w < MIN_WIDTH) ||
	    (src_h > MAX_HEIGHT) || (src_h < MIN_HEIGHT) ||
	    (dst_w > MAX_WIDTH) || (dst_w < MIN_WIDTH) ||
	    (dst_h > MAX_HEIGHT) || (dst_h < MIN_HEIGHT)) {
		FUNC2("Invalid in/out size %dx%d -> %dx%d\n",
			  src_w, src_h,
			  dst_w, dst_h);
		return -EINVAL;
	}

	if (!hqvdp->xp70_initialized)
		/* Start HQVDP XP70 coprocessor */
		FUNC9(hqvdp);

	if (!hqvdp->vtg_registered) {
		/* Prevent VTG shutdown */
		if (FUNC5(hqvdp->clk_pix_main)) {
			FUNC2("Failed to prepare/enable pix main clk\n");
			return -EINVAL;
		}

		/* Register VTG Vsync callback to handle bottom fields */
		if (FUNC12(hqvdp->vtg,
					    &hqvdp->vtg_nb,
					    crtc)) {
			FUNC2("Cannot register VTG notifier\n");
			FUNC4(hqvdp->clk_pix_main);
			return -EINVAL;
		}
		hqvdp->vtg_registered = true;
	}

	FUNC1("CRTC:%d (%s) drm plane:%d (%s)\n",
		      crtc->base.id, FUNC10(FUNC14(crtc)),
		      drm_plane->base.id, FUNC11(plane));
	FUNC1("%s dst=(%dx%d)@(%d,%d) - src=(%dx%d)@(%d,%d)\n",
		      FUNC11(plane),
		      dst_w, dst_h, dst_x, dst_y,
		      src_w, src_h, src_x, src_y);

	return 0;
}