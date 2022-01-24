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
struct komeda_component_state {int /*<<< orphan*/  affected_inputs; int /*<<< orphan*/  active_inputs; int /*<<< orphan*/  changed_active_inputs; int /*<<< orphan*/ * inputs; struct komeda_component* component; } ;
struct komeda_component_output {int dummy; } ;
struct komeda_component {int max_active_inputs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct komeda_component_output*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct komeda_component_output*,int) ; 

__attribute__((used)) static void
FUNC5(struct komeda_component_state *state,
			   struct komeda_component_output *input,
			   int idx)
{
	struct komeda_component *c = state->component;

	FUNC1((idx < 0 || idx >= c->max_active_inputs));

	/* since the inputs[i] is only valid when it is active. So if a input[i]
	 * is a newly enabled input which switches from disable to enable, then
	 * the old inputs[i] is undefined (NOT zeroed), we can not rely on
	 * memcmp, but directly mark it changed
	 */
	if (!FUNC2(idx, state->affected_inputs) ||
	    FUNC3(&state->inputs[idx], input, sizeof(*input))) {
		FUNC4(&state->inputs[idx], input, sizeof(*input));
		state->changed_active_inputs |= FUNC0(idx);
	}
	state->active_inputs |= FUNC0(idx);
	state->affected_inputs |= FUNC0(idx);
}