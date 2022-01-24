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
struct drm_private_state {struct drm_atomic_state* state; } ;
struct drm_private_obj {int /*<<< orphan*/  state; TYPE_1__* funcs; int /*<<< orphan*/  lock; } ;
struct drm_atomic_state {int num_private_objs; struct __drm_private_objs_state* private_objs; int /*<<< orphan*/  acquire_ctx; } ;
struct __drm_private_objs_state {struct drm_private_obj* ptr; struct drm_private_state* new_state; int /*<<< orphan*/  old_state; struct drm_private_state* state; } ;
struct TYPE_2__ {struct drm_private_state* (* atomic_duplicate_state ) (struct drm_private_obj*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct drm_private_obj*,struct drm_private_state*,struct drm_atomic_state*) ; 
 int ENOMEM ; 
 struct drm_private_state* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct __drm_private_objs_state* FUNC3 (struct __drm_private_objs_state*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct __drm_private_objs_state*,int /*<<< orphan*/ ,int) ; 
 struct drm_private_state* FUNC5 (struct drm_private_obj*) ; 

struct drm_private_state *
FUNC6(struct drm_atomic_state *state,
				 struct drm_private_obj *obj)
{
	int index, num_objs, i, ret;
	size_t size;
	struct __drm_private_objs_state *arr;
	struct drm_private_state *obj_state;

	for (i = 0; i < state->num_private_objs; i++)
		if (obj == state->private_objs[i].ptr)
			return state->private_objs[i].state;

	ret = FUNC2(&obj->lock, state->acquire_ctx);
	if (ret)
		return FUNC1(ret);

	num_objs = state->num_private_objs + 1;
	size = sizeof(*state->private_objs) * num_objs;
	arr = FUNC3(state->private_objs, size, GFP_KERNEL);
	if (!arr)
		return FUNC1(-ENOMEM);

	state->private_objs = arr;
	index = state->num_private_objs;
	FUNC4(&state->private_objs[index], 0, sizeof(*state->private_objs));

	obj_state = obj->funcs->atomic_duplicate_state(obj);
	if (!obj_state)
		return FUNC1(-ENOMEM);

	state->private_objs[index].state = obj_state;
	state->private_objs[index].old_state = obj->state;
	state->private_objs[index].new_state = obj_state;
	state->private_objs[index].ptr = obj;
	obj_state->state = state;

	state->num_private_objs = num_objs;

	FUNC0("Added new private object %p state %p to %p\n",
			 obj, obj_state, state);

	return obj_state;
}