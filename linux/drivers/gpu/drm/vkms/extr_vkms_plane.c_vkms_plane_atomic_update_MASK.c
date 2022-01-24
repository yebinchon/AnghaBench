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
struct vkms_plane_state {struct vkms_composer* composer; } ;
struct vkms_composer {int /*<<< orphan*/  cpp; int /*<<< orphan*/  pitch; int /*<<< orphan*/  offset; int /*<<< orphan*/  fb; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct drm_rect {int dummy; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {TYPE_2__* state; } ;
struct drm_framebuffer {TYPE_1__* format; int /*<<< orphan*/ * pitches; int /*<<< orphan*/ * offsets; } ;
struct TYPE_4__ {struct drm_framebuffer dst; struct drm_framebuffer src; int /*<<< orphan*/  crtc; struct drm_framebuffer* fb; } ;
struct TYPE_3__ {int /*<<< orphan*/ * cpp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct drm_framebuffer*,int) ; 
 struct vkms_plane_state* FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(struct drm_plane *plane,
				     struct drm_plane_state *old_state)
{
	struct vkms_plane_state *vkms_plane_state;
	struct drm_framebuffer *fb = plane->state->fb;
	struct vkms_composer *composer;

	if (!plane->state->crtc || !fb)
		return;

	vkms_plane_state = FUNC2(plane->state);

	composer = vkms_plane_state->composer;
	FUNC1(&composer->src, &plane->state->src, sizeof(struct drm_rect));
	FUNC1(&composer->dst, &plane->state->dst, sizeof(struct drm_rect));
	FUNC1(&composer->fb, fb, sizeof(struct drm_framebuffer));
	FUNC0(&composer->fb);
	composer->offset = fb->offsets[0];
	composer->pitch = fb->pitches[0];
	composer->cpp = fb->format->cpp[0];
}