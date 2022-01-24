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
struct komeda_component_state {int dummy; } ;
struct komeda_component {int /*<<< orphan*/  obj; TYPE_2__* pipeline; } ;
struct drm_private_state {int dummy; } ;
struct drm_atomic_state {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {TYPE_1__ obj; } ;

/* Variables and functions */
 struct komeda_component_state* FUNC0 (struct drm_private_state*) ; 
 scalar_t__ FUNC1 (struct drm_private_state*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct drm_private_state* FUNC3 (struct drm_atomic_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct komeda_component_state* FUNC5 (struct drm_private_state*) ; 

__attribute__((used)) static struct komeda_component_state *
FUNC6(struct komeda_component *c,
			   struct drm_atomic_state *state)
{
	struct drm_private_state *priv_st;

	FUNC2(!FUNC4(&c->pipeline->obj.lock));

	priv_st = FUNC3(state, &c->obj);
	if (FUNC1(priv_st))
		return FUNC0(priv_st);

	return FUNC5(priv_st);
}