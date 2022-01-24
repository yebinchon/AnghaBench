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
struct intel_atomic_state {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct intel_crtc_state* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct intel_crtc_state *
FUNC2(struct intel_atomic_state *state,
				struct intel_crtc *crtc)
{
	return FUNC1(FUNC0(&state->base,
								 &crtc->base));
}