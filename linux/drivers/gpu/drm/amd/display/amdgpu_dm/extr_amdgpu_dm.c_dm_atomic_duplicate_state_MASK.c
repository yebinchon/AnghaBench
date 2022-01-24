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
struct drm_private_state {int dummy; } ;
struct drm_private_obj {int /*<<< orphan*/  state; } ;
struct dm_atomic_state {struct drm_private_state base; scalar_t__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_private_obj*,struct drm_private_state*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_atomic_state*) ; 
 struct dm_atomic_state* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct dm_atomic_state* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_private_state *
FUNC5(struct drm_private_obj *obj)
{
	struct dm_atomic_state *old_state, *new_state;

	new_state = FUNC3(sizeof(*new_state), GFP_KERNEL);
	if (!new_state)
		return NULL;

	FUNC0(obj, &new_state->base);

	old_state = FUNC4(obj->state);

	if (old_state && old_state->context)
		new_state->context = FUNC1(old_state->context);

	if (!new_state->context) {
		FUNC2(new_state);
		return NULL;
	}

	return &new_state->base;
}