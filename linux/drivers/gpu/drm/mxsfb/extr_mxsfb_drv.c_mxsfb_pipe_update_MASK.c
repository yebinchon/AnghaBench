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
struct mxsfb_drm_private {int dummy; } ;
struct drm_simple_display_pipe {int dummy; } ;
struct drm_plane_state {int dummy; } ;

/* Variables and functions */
 struct mxsfb_drm_private* FUNC0 (struct drm_simple_display_pipe*) ; 
 int /*<<< orphan*/  FUNC1 (struct mxsfb_drm_private*,struct drm_plane_state*) ; 

__attribute__((used)) static void FUNC2(struct drm_simple_display_pipe *pipe,
			      struct drm_plane_state *plane_state)
{
	struct mxsfb_drm_private *mxsfb = FUNC0(pipe);

	FUNC1(mxsfb, plane_state);
}