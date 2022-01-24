#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sti_plane {int dummy; } ;
struct TYPE_4__ {int size; scalar_t__ base; int /*<<< orphan*/  paddr; } ;
struct sti_cursor {int width; int height; TYPE_1__ pixmap; int /*<<< orphan*/  dev; } ;
struct drm_plane_state {int crtc_x; int crtc_y; int src_w; int src_h; int /*<<< orphan*/  crtc_h; int /*<<< orphan*/  crtc_w; int /*<<< orphan*/  state; struct drm_framebuffer* fb; struct drm_crtc* crtc; } ;
struct TYPE_6__ {int id; } ;
struct drm_plane {TYPE_3__ base; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_display_mode {scalar_t__ crtc_vdisplay; scalar_t__ crtc_hdisplay; } ;
struct drm_crtc_state {struct drm_display_mode mode; } ;
struct TYPE_5__ {int id; } ;
struct drm_crtc {TYPE_2__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EINVAL ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int STI_CURS_MAX_SIZE ; 
 int STI_CURS_MIN_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 struct drm_crtc_state* FUNC5 (int /*<<< orphan*/ ,struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_framebuffer*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sti_plane*) ; 
 struct sti_cursor* FUNC9 (struct sti_plane*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_crtc*) ; 
 struct sti_plane* FUNC11 (struct drm_plane*) ; 

__attribute__((used)) static int FUNC12(struct drm_plane *drm_plane,
				   struct drm_plane_state *state)
{
	struct sti_plane *plane = FUNC11(drm_plane);
	struct sti_cursor *cursor = FUNC9(plane);
	struct drm_crtc *crtc = state->crtc;
	struct drm_framebuffer *fb = state->fb;
	struct drm_crtc_state *crtc_state;
	struct drm_display_mode *mode;
	int dst_x, dst_y, dst_w, dst_h;
	int src_w, src_h;

	/* no need for further checks if the plane is being disabled */
	if (!crtc || !fb)
		return 0;

	crtc_state = FUNC5(state->state, crtc);
	mode = &crtc_state->mode;
	dst_x = state->crtc_x;
	dst_y = state->crtc_y;
	dst_w = FUNC2(state->crtc_w, 0, mode->crtc_hdisplay - dst_x);
	dst_h = FUNC2(state->crtc_h, 0, mode->crtc_vdisplay - dst_y);
	/* src_x are in 16.16 format */
	src_w = state->src_w >> 16;
	src_h = state->src_h >> 16;

	if (src_w < STI_CURS_MIN_SIZE ||
	    src_h < STI_CURS_MIN_SIZE ||
	    src_w > STI_CURS_MAX_SIZE ||
	    src_h > STI_CURS_MAX_SIZE) {
		FUNC1("Invalid cursor size (%dx%d)\n",
				src_w, src_h);
		return -EINVAL;
	}

	/* If the cursor size has changed, re-allocated the pixmap */
	if (!cursor->pixmap.base ||
	    (cursor->width != src_w) ||
	    (cursor->height != src_h)) {
		cursor->width = src_w;
		cursor->height = src_h;

		if (cursor->pixmap.base)
			FUNC4(cursor->dev, cursor->pixmap.size,
				    cursor->pixmap.base, cursor->pixmap.paddr);

		cursor->pixmap.size = cursor->width * cursor->height;

		cursor->pixmap.base = FUNC3(cursor->dev,
						   cursor->pixmap.size,
						   &cursor->pixmap.paddr,
						   GFP_KERNEL | GFP_DMA);
		if (!cursor->pixmap.base) {
			FUNC1("Failed to allocate memory for pixmap\n");
			return -EINVAL;
		}
	}

	if (!FUNC6(fb, 0)) {
		FUNC1("Can't get CMA GEM object for fb\n");
		return -EINVAL;
	}

	FUNC0("CRTC:%d (%s) drm plane:%d (%s)\n",
		      crtc->base.id, FUNC7(FUNC10(crtc)),
		      drm_plane->base.id, FUNC8(plane));
	FUNC0("(%dx%d)@(%d,%d)\n", dst_w, dst_h, dst_x, dst_y);

	return 0;
}