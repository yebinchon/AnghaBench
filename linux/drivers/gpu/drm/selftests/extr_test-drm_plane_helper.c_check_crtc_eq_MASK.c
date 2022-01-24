#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int x1; int y1; } ;
struct drm_plane_state {TYPE_1__ dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int) ; 
 unsigned int FUNC1 (TYPE_1__*) ; 
 unsigned int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static bool FUNC3(struct drm_plane_state *plane_state,
			  int crtc_x, int crtc_y,
			  unsigned crtc_w, unsigned crtc_h)
{
	if (plane_state->dst.x1 != crtc_x ||
	    plane_state->dst.y1 != crtc_y ||
	    FUNC2(&plane_state->dst) != crtc_w ||
	    FUNC1(&plane_state->dst) != crtc_h) {
		FUNC0("dst: ", &plane_state->dst, false);

		return false;
	}

	return true;
}