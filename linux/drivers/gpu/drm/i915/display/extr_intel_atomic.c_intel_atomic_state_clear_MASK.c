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
struct intel_atomic_state {int dpll_set; int modeset; int /*<<< orphan*/  base; } ;
struct drm_atomic_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct intel_atomic_state* FUNC1 (struct drm_atomic_state*) ; 

void FUNC2(struct drm_atomic_state *s)
{
	struct intel_atomic_state *state = FUNC1(s);
	FUNC0(&state->base);
	state->dpll_set = state->modeset = false;
}