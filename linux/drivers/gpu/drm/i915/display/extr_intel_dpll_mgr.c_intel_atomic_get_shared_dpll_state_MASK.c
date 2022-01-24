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
struct intel_shared_dpll_state {int dummy; } ;
struct intel_atomic_state {int dpll_set; struct intel_shared_dpll_state* shared_dpll; } ;
struct drm_atomic_state {TYPE_2__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  connection_mutex; } ;
struct TYPE_4__ {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct intel_shared_dpll_state*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 struct intel_atomic_state* FUNC4 (struct drm_atomic_state*) ; 

__attribute__((used)) static struct intel_shared_dpll_state *
FUNC5(struct drm_atomic_state *s)
{
	struct intel_atomic_state *state = FUNC4(s);

	FUNC0(!FUNC1(&s->dev->mode_config.connection_mutex));

	if (!state->dpll_set) {
		state->dpll_set = true;

		FUNC2(FUNC3(s->dev),
						  state->shared_dpll);
	}

	return state->shared_dpll;
}