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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int src_x; int src_y; int /*<<< orphan*/  visible; } ;
struct intel_plane_state {TYPE_1__* color_plane; TYPE_2__ base; } ;
struct TYPE_3__ {int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,struct intel_plane_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,struct intel_plane_state*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct intel_plane_state*) ; 

__attribute__((used)) static int FUNC4(struct intel_plane_state *plane_state)
{
	int src_x, src_y;
	u32 offset;
	int ret;

	ret = FUNC3(plane_state);
	if (ret)
		return ret;

	if (!plane_state->base.visible)
		return 0;

	src_x = plane_state->base.src_x >> 16;
	src_y = plane_state->base.src_y >> 16;

	FUNC1(&src_x, &src_y, plane_state, 0);
	offset = FUNC2(&src_x, &src_y,
						    plane_state, 0);

	if (src_x != 0 || src_y != 0) {
		FUNC0("Arbitrary cursor panning not supported\n");
		return -EINVAL;
	}

	plane_state->color_plane[0].offset = offset;

	return 0;
}