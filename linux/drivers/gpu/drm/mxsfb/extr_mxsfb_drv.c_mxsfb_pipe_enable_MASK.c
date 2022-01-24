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
struct mxsfb_drm_private {int /*<<< orphan*/  panel; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct drm_simple_display_pipe {TYPE_1__ plane; } ;
struct drm_plane_state {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct drm_crtc_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mxsfb_drm_private* FUNC2 (struct drm_simple_display_pipe*) ; 
 int /*<<< orphan*/  FUNC3 (struct mxsfb_drm_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct drm_simple_display_pipe *pipe,
			      struct drm_crtc_state *crtc_state,
			      struct drm_plane_state *plane_state)
{
	struct mxsfb_drm_private *mxsfb = FUNC2(pipe);
	struct drm_device *drm = pipe->plane.dev;

	FUNC4(drm->dev);
	FUNC1(mxsfb->panel);
	FUNC3(mxsfb);
	FUNC0(mxsfb->panel);
}