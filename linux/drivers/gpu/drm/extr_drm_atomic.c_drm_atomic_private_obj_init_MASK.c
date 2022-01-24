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
struct drm_private_state_funcs {int dummy; } ;
struct drm_private_state {int dummy; } ;
struct drm_private_obj {int /*<<< orphan*/  head; struct drm_private_state_funcs const* funcs; struct drm_private_state* state; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  privobj_list; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_private_obj*,int /*<<< orphan*/ ,int) ; 

void
FUNC3(struct drm_device *dev,
			    struct drm_private_obj *obj,
			    struct drm_private_state *state,
			    const struct drm_private_state_funcs *funcs)
{
	FUNC2(obj, 0, sizeof(*obj));

	FUNC0(&obj->lock);

	obj->state = state;
	obj->funcs = funcs;
	FUNC1(&obj->head, &dev->mode_config.privobj_list);
}