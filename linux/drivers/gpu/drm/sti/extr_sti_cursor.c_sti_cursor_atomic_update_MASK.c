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
typedef  int u32 ;
struct sti_plane {int /*<<< orphan*/  status; } ;
struct TYPE_2__ {int paddr; } ;
struct sti_cursor {int width; int height; int clut_paddr; scalar_t__ regs; TYPE_1__ pixmap; } ;
struct drm_plane_state {int crtc_x; int crtc_y; struct drm_framebuffer* fb; struct drm_crtc* crtc; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct drm_gem_cma_object {scalar_t__ vaddr; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_display_mode {int vdisplay; int hdisplay; } ;
struct drm_crtc {struct drm_display_mode mode; } ;

/* Variables and functions */
 scalar_t__ CUR_AWE ; 
 scalar_t__ CUR_AWS ; 
 scalar_t__ CUR_CML ; 
 scalar_t__ CUR_CTL ; 
 int CUR_CTL_CLUT_UPDATE ; 
 scalar_t__ CUR_PML ; 
 scalar_t__ CUR_PMP ; 
 scalar_t__ CUR_SIZE ; 
 scalar_t__ CUR_VPO ; 
 int /*<<< orphan*/  STI_PLANE_UPDATED ; 
 struct drm_gem_cma_object* FUNC0 (struct drm_framebuffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sti_cursor*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct sti_plane*,int,int) ; 
 int FUNC3 (struct drm_display_mode,int) ; 
 int FUNC4 (struct drm_display_mode,int) ; 
 struct sti_cursor* FUNC5 (struct sti_plane*) ; 
 struct sti_plane* FUNC6 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct drm_plane *drm_plane,
				     struct drm_plane_state *oldstate)
{
	struct drm_plane_state *state = drm_plane->state;
	struct sti_plane *plane = FUNC6(drm_plane);
	struct sti_cursor *cursor = FUNC5(plane);
	struct drm_crtc *crtc = state->crtc;
	struct drm_framebuffer *fb = state->fb;
	struct drm_display_mode *mode;
	int dst_x, dst_y;
	struct drm_gem_cma_object *cma_obj;
	u32 y, x;
	u32 val;

	if (!crtc || !fb)
		return;

	mode = &crtc->mode;
	dst_x = state->crtc_x;
	dst_y = state->crtc_y;

	cma_obj = FUNC0(fb, 0);

	/* Convert ARGB8888 to CLUT8 */
	FUNC1(cursor, (u32 *)cma_obj->vaddr);

	/* AWS and AWE depend on the mode */
	y = FUNC3(*mode, 0);
	x = FUNC4(*mode, 0);
	val = y << 16 | x;
	FUNC7(val, cursor->regs + CUR_AWS);
	y = FUNC3(*mode, mode->vdisplay - 1);
	x = FUNC4(*mode, mode->hdisplay - 1);
	val = y << 16 | x;
	FUNC7(val, cursor->regs + CUR_AWE);

	/* Set memory location, size, and position */
	FUNC7(cursor->pixmap.paddr, cursor->regs + CUR_PML);
	FUNC7(cursor->width, cursor->regs + CUR_PMP);
	FUNC7(cursor->height << 16 | cursor->width, cursor->regs + CUR_SIZE);

	y = FUNC3(*mode, dst_y);
	x = FUNC4(*mode, dst_x);
	FUNC7((y << 16) | x, cursor->regs + CUR_VPO);

	/* Set and fetch CLUT */
	FUNC7(cursor->clut_paddr, cursor->regs + CUR_CML);
	FUNC7(CUR_CTL_CLUT_UPDATE, cursor->regs + CUR_CTL);

	FUNC2(plane, true, false);

	plane->status = STI_PLANE_UPDATED;
}