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
struct mdp5_kms {int /*<<< orphan*/  num_hwmixers; struct mdp5_hw_mixer** hwmixers; int /*<<< orphan*/  cfg; struct drm_device* dev; } ;
struct mdp5_hw_mixer {int /*<<< orphan*/  idx; } ;
struct TYPE_2__ {int count; int /*<<< orphan*/ * instances; } ;
struct mdp5_cfg_hw {TYPE_1__ lm; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC1 (struct mdp5_hw_mixer*) ; 
 int FUNC2 (struct mdp5_hw_mixer*) ; 
 struct mdp5_cfg_hw* FUNC3 (int /*<<< orphan*/ ) ; 
 struct mdp5_hw_mixer* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mdp5_kms *mdp5_kms)
{
	struct drm_device *dev = mdp5_kms->dev;
	const struct mdp5_cfg_hw *hw_cfg;
	int i, ret;

	hw_cfg = FUNC3(mdp5_kms->cfg);

	for (i = 0; i < hw_cfg->lm.count; i++) {
		struct mdp5_hw_mixer *mixer;

		mixer = FUNC4(&hw_cfg->lm.instances[i]);
		if (FUNC1(mixer)) {
			ret = FUNC2(mixer);
			FUNC0(dev->dev, "failed to construct LM%d (%d)\n",
				i, ret);
			return ret;
		}

		mixer->idx = mdp5_kms->num_hwmixers;
		mdp5_kms->hwmixers[mdp5_kms->num_hwmixers++] = mixer;
	}

	return 0;
}