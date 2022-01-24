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
struct drm_plane {int /*<<< orphan*/  name; scalar_t__ state; TYPE_2__* funcs; int /*<<< orphan*/  head; int /*<<< orphan*/  base; int /*<<< orphan*/  modifiers; int /*<<< orphan*/  format_types; int /*<<< orphan*/  mutex; struct drm_device* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  num_total_plane; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* atomic_destroy_state ) (struct drm_plane*,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_plane*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_plane*,scalar_t__) ; 

void FUNC9(struct drm_plane *plane)
{
	struct drm_device *dev = plane->dev;

	FUNC3(&plane->mutex);

	FUNC4(plane->format_types);
	FUNC4(plane->modifiers);
	FUNC2(dev, &plane->base);

	FUNC0(FUNC6(&plane->head));

	/* Note that the plane_list is considered to be static; should we
	 * remove the drm_plane at runtime we would have to decrement all
	 * the indices on the drm_plane after us in the plane_list.
	 */

	FUNC5(&plane->head);
	dev->mode_config.num_total_plane--;

	FUNC1(plane->state && !plane->funcs->atomic_destroy_state);
	if (plane->state && plane->funcs->atomic_destroy_state)
		plane->funcs->atomic_destroy_state(plane, plane->state);

	FUNC4(plane->name);

	FUNC7(plane, 0, sizeof(*plane));
}