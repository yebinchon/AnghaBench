#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {unsigned int rotation; int /*<<< orphan*/  src; int /*<<< orphan*/  fb; } ;
struct intel_plane_state {TYPE_5__ base; TYPE_3__* color_plane; int /*<<< orphan*/  view; } ;
struct TYPE_13__ {int width; int height; TYPE_1__* format; } ;
struct intel_framebuffer {TYPE_6__ base; TYPE_4__* normal; TYPE_2__* rotated; } ;
struct TYPE_11__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_10__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; scalar_t__ offset; int /*<<< orphan*/  stride; } ;
struct TYPE_9__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_8__ {int num_planes; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MODE_ROTATE_270 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_6__*,unsigned int) ; 
 int FUNC4 (struct intel_plane_state*) ; 
 scalar_t__ FUNC5 (struct intel_plane_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_plane_state*) ; 
 struct intel_framebuffer* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct intel_plane_state *plane_state)
{
	const struct intel_framebuffer *fb =
		FUNC7(plane_state->base.fb);
	unsigned int rotation = plane_state->base.rotation;
	int i, num_planes;

	if (!fb)
		return 0;

	num_planes = fb->base.format->num_planes;

	if (FUNC5(plane_state)) {
		FUNC6(plane_state);

		/*
		 * Sometimes even remapping can't overcome
		 * the stride limitations :( Can happen with
		 * big plane sizes and suitably misaligned
		 * offsets.
		 */
		return FUNC4(plane_state);
	}

	FUNC3(&plane_state->view, &fb->base, rotation);

	for (i = 0; i < num_planes; i++) {
		plane_state->color_plane[i].stride = FUNC2(&fb->base, i, rotation);
		plane_state->color_plane[i].offset = 0;

		if (FUNC1(rotation)) {
			plane_state->color_plane[i].x = fb->rotated[i].x;
			plane_state->color_plane[i].y = fb->rotated[i].y;
		} else {
			plane_state->color_plane[i].x = fb->normal[i].x;
			plane_state->color_plane[i].y = fb->normal[i].y;
		}
	}

	/* Rotate src coordinates to match rotated GTT view */
	if (FUNC1(rotation))
		FUNC0(&plane_state->base.src,
				fb->base.width << 16, fb->base.height << 16,
				DRM_MODE_ROTATE_270);

	return FUNC4(plane_state);
}