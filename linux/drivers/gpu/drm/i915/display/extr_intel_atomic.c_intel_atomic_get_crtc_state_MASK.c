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
struct intel_crtc_state {int dummy; } ;
struct intel_crtc {int /*<<< orphan*/  base; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_atomic_state {int dummy; } ;

/* Variables and functions */
 struct intel_crtc_state* FUNC0 (struct drm_crtc_state*) ; 
 scalar_t__ FUNC1 (struct drm_crtc_state*) ; 
 struct drm_crtc_state* FUNC2 (struct drm_atomic_state*,int /*<<< orphan*/ *) ; 
 struct intel_crtc_state* FUNC3 (struct drm_crtc_state*) ; 

struct intel_crtc_state *
FUNC4(struct drm_atomic_state *state,
			    struct intel_crtc *crtc)
{
	struct drm_crtc_state *crtc_state;
	crtc_state = FUNC2(state, &crtc->base);
	if (FUNC1(crtc_state))
		return FUNC0(crtc_state);

	return FUNC3(crtc_state);
}