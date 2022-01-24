#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mdp5_hw_mixer {int dummy; } ;
struct TYPE_2__ {struct mdp5_hw_mixer* mixer; } ;
struct mdp5_crtc_state {TYPE_1__ pipeline; } ;
struct drm_crtc {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct mdp5_hw_mixer* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 struct mdp5_crtc_state* FUNC2 (int /*<<< orphan*/ ) ; 

struct mdp5_hw_mixer *FUNC3(struct drm_crtc *crtc)
{
	struct mdp5_crtc_state *mdp5_cstate;

	if (FUNC1(!crtc))
		return FUNC0(-EINVAL);

	mdp5_cstate = FUNC2(crtc->state);

	return FUNC1(!mdp5_cstate->pipeline.mixer) ?
		FUNC0(-EINVAL) : mdp5_cstate->pipeline.mixer;
}