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
typedef  int uint32_t ;
struct msm_drm_private {int /*<<< orphan*/  kms; } ;
struct mdp5_kms {int num_hwmixers; struct mdp5_hw_mixer** hwmixers; } ;
struct mdp5_hw_mixer_state {struct drm_crtc** hwmixer_to_crtc; } ;
struct mdp5_hw_mixer {size_t idx; int caps; int /*<<< orphan*/  lm; } ;
struct mdp5_global_state {struct mdp5_hw_mixer_state hwmixer; } ;
struct drm_crtc {int /*<<< orphan*/  name; } ;
struct drm_atomic_state {TYPE_1__* dev; } ;
struct TYPE_2__ {struct msm_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (struct mdp5_global_state*) ; 
 int MDP_LM_CAP_PAIR ; 
 int FUNC2 (struct mdp5_global_state*) ; 
 int FUNC3 (struct mdp5_kms*,int /*<<< orphan*/ ) ; 
 struct mdp5_global_state* FUNC4 (struct drm_atomic_state*) ; 
 struct mdp5_kms* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct drm_atomic_state *s, struct drm_crtc *crtc,
		      uint32_t caps, struct mdp5_hw_mixer **mixer,
		      struct mdp5_hw_mixer **r_mixer)
{
	struct msm_drm_private *priv = s->dev->dev_private;
	struct mdp5_kms *mdp5_kms = FUNC5(FUNC6(priv->kms));
	struct mdp5_global_state *global_state = FUNC4(s);
	struct mdp5_hw_mixer_state *new_state;
	int i;

	if (FUNC1(global_state))
		return FUNC2(global_state);

	new_state = &global_state->hwmixer;

	for (i = 0; i < mdp5_kms->num_hwmixers; i++) {
		struct mdp5_hw_mixer *cur = mdp5_kms->hwmixers[i];

		/*
		 * skip if already in-use by a different CRTC. If there is a
		 * mixer already assigned to this CRTC, it means this call is
		 * a request to get an additional right mixer. Assume that the
		 * existing mixer is the 'left' one, and try to see if we can
		 * get its corresponding 'right' pair.
		 */
		if (new_state->hwmixer_to_crtc[cur->idx] &&
		    new_state->hwmixer_to_crtc[cur->idx] != crtc)
			continue;

		/* skip if doesn't support some required caps: */
		if (caps & ~cur->caps)
			continue;

		if (r_mixer) {
			int pair_idx;

			pair_idx = FUNC3(mdp5_kms, cur->lm);
			if (pair_idx < 0)
				return -EINVAL;

			if (new_state->hwmixer_to_crtc[pair_idx])
				continue;

			*r_mixer = mdp5_kms->hwmixers[pair_idx];
		}

		/*
		 * prefer a pair-able LM over an unpairable one. We can
		 * switch the CRTC from Normal mode to Source Split mode
		 * without requiring a full modeset if we had already
		 * assigned this CRTC a pair-able LM.
		 *
		 * TODO: There will be assignment sequences which would
		 * result in the CRTC requiring a full modeset, even
		 * if we have the LM resources to prevent it. For a platform
		 * with a few displays, we don't run out of pair-able LMs
		 * so easily. For now, ignore the possibility of requiring
		 * a full modeset.
		 */
		if (!(*mixer) || cur->caps & MDP_LM_CAP_PAIR)
			*mixer = cur;
	}

	if (!(*mixer))
		return -ENOMEM;

	if (r_mixer && !(*r_mixer))
		return -ENOMEM;

	FUNC0("assigning Layer Mixer %d to crtc %s", (*mixer)->lm, crtc->name);

	new_state->hwmixer_to_crtc[(*mixer)->idx] = crtc;
	if (r_mixer) {
		FUNC0("assigning Right Layer Mixer %d to crtc %s", (*r_mixer)->lm,
		    crtc->name);
		new_state->hwmixer_to_crtc[(*r_mixer)->idx] = crtc;
	}

	return 0;
}