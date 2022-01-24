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
struct TYPE_4__ {TYPE_1__* dev; } ;
struct drm_simple_display_pipe {TYPE_2__ crtc; } ;
struct drm_plane_state {int /*<<< orphan*/  fb; } ;
struct drm_crtc_state {int /*<<< orphan*/  mode; } ;
struct cirrus_device {int dummy; } ;
struct TYPE_3__ {struct cirrus_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cirrus_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct drm_simple_display_pipe *pipe,
			       struct drm_crtc_state *crtc_state,
			       struct drm_plane_state *plane_state)
{
	struct cirrus_device *cirrus = pipe->crtc.dev->dev_private;

	FUNC1(cirrus, &crtc_state->mode, plane_state->fb);
	FUNC0(plane_state->fb);
}