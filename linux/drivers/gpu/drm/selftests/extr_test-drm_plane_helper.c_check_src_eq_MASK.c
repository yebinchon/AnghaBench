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
struct TYPE_4__ {scalar_t__ x1; scalar_t__ y1; } ;
struct drm_plane_state {TYPE_1__ src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int) ; 
 unsigned int FUNC1 (TYPE_1__*) ; 
 unsigned int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 

__attribute__((used)) static bool FUNC4(struct drm_plane_state *plane_state,
			 unsigned src_x, unsigned src_y,
			 unsigned src_w, unsigned src_h)
{
	if (plane_state->src.x1 < 0) {
		FUNC3("src x coordinate %x should never be below 0.\n", plane_state->src.x1);
		FUNC0("src: ", &plane_state->src, true);
		return false;
	}
	if (plane_state->src.y1 < 0) {
		FUNC3("src y coordinate %x should never be below 0.\n", plane_state->src.y1);
		FUNC0("src: ", &plane_state->src, true);
		return false;
	}

	if (plane_state->src.x1 != src_x ||
	    plane_state->src.y1 != src_y ||
	    FUNC2(&plane_state->src) != src_w ||
	    FUNC1(&plane_state->src) != src_h) {
		FUNC0("src: ", &plane_state->src, true);
		return false;
	}

	return true;
}