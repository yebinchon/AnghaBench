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
struct qxl_device {int dummy; } ;
struct qxl_bo {int dummy; } ;
struct drm_plane_state {TYPE_2__* fb; int /*<<< orphan*/  crtc; } ;
struct drm_plane {TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * obj; } ;
struct TYPE_3__ {struct qxl_device* dev_private; } ;

/* Variables and functions */
 struct qxl_bo* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct qxl_device*,struct qxl_bo*) ; 

__attribute__((used)) static int FUNC2(struct drm_plane *plane,
				    struct drm_plane_state *state)
{
	struct qxl_device *qdev = plane->dev->dev_private;
	struct qxl_bo *bo;

	if (!state->crtc || !state->fb)
		return 0;

	bo = FUNC0(state->fb->obj[0]);

	return FUNC1(qdev, bo);
}