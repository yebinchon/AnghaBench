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
struct intel_atomic_state {int /*<<< orphan*/  commit_ready; } ;
struct drm_atomic_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_atomic_state*) ; 
 struct intel_atomic_state* FUNC3 (struct drm_atomic_state*) ; 

__attribute__((used)) static void FUNC4(struct drm_atomic_state *state)
{
	struct intel_atomic_state *intel_state = FUNC3(state);

	FUNC0(state);

	FUNC1(&intel_state->commit_ready);

	FUNC2(state);
}