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
struct intel_plane_state {int dummy; } ;
struct intel_plane {int /*<<< orphan*/  base; } ;
struct intel_atomic_state {int /*<<< orphan*/  base; } ;
struct drm_plane_state {int dummy; } ;

/* Variables and functions */
 struct intel_plane_state* FUNC0 (struct drm_plane_state*) ; 
 scalar_t__ FUNC1 (struct drm_plane_state*) ; 
 struct drm_plane_state* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct intel_plane_state* FUNC3 (struct drm_plane_state*) ; 

__attribute__((used)) static inline struct intel_plane_state *
FUNC4(struct intel_atomic_state *state,
				 struct intel_plane *plane)
{
	struct drm_plane_state *ret =
		FUNC2(&state->base, &plane->base);

	if (FUNC1(ret))
		return FUNC0(ret);

	return FUNC3(ret);
}