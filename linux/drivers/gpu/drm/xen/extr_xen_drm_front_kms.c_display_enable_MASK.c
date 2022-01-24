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
struct xen_drm_front_drm_pipeline {int conn_connected; } ;
struct drm_crtc {int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  dev; } ;
struct drm_simple_display_pipe {struct drm_crtc crtc; } ;
struct drm_plane_state {struct drm_framebuffer* fb; } ;
struct drm_framebuffer {TYPE_1__* format; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct drm_crtc_state {int dummy; } ;
struct TYPE_2__ {int* cpp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct xen_drm_front_drm_pipeline* FUNC3 (struct drm_simple_display_pipe*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_framebuffer*) ; 
 int FUNC5 (struct xen_drm_front_drm_pipeline*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct drm_simple_display_pipe *pipe,
			   struct drm_crtc_state *crtc_state,
			   struct drm_plane_state *plane_state)
{
	struct xen_drm_front_drm_pipeline *pipeline =
			FUNC3(pipe);
	struct drm_crtc *crtc = &pipe->crtc;
	struct drm_framebuffer *fb = plane_state->fb;
	int ret, idx;

	if (!FUNC1(pipe->crtc.dev, &idx))
		return;

	ret = FUNC5(pipeline, crtc->x, crtc->y,
				     fb->width, fb->height,
				     fb->format->cpp[0] * 8,
				     FUNC4(fb));

	if (ret) {
		FUNC0("Failed to enable display: %d\n", ret);
		pipeline->conn_connected = false;
	}

	FUNC2(idx);
}