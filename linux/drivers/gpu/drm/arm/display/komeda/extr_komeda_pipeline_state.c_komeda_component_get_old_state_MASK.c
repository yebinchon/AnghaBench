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
struct komeda_component_state {int dummy; } ;
struct komeda_component {int /*<<< orphan*/  obj; } ;
struct drm_private_state {int dummy; } ;
struct drm_atomic_state {int dummy; } ;

/* Variables and functions */
 struct drm_private_state* FUNC0 (struct drm_atomic_state*,int /*<<< orphan*/ *) ; 
 struct komeda_component_state* FUNC1 (struct drm_private_state*) ; 

__attribute__((used)) static struct komeda_component_state *
FUNC2(struct komeda_component *c,
			       struct drm_atomic_state *state)
{
	struct drm_private_state *priv_st;

	priv_st = FUNC0(state, &c->obj);
	if (priv_st)
		return FUNC1(priv_st);
	return NULL;
}