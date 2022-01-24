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
typedef  int /*<<< orphan*/  uint32_t ;
struct mdp5_kms {int /*<<< orphan*/  num_hwpipes; struct mdp5_hw_pipe** hwpipes; struct drm_device* dev; } ;
struct mdp5_hw_pipe {int /*<<< orphan*/  idx; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
typedef  enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct mdp5_hw_pipe*) ; 
 int FUNC2 (struct mdp5_hw_pipe*) ; 
 struct mdp5_hw_pipe* FUNC3 (int const,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int const) ; 

__attribute__((used)) static int FUNC5(struct mdp5_kms *mdp5_kms, int cnt,
		const enum mdp5_pipe *pipes, const uint32_t *offsets,
		uint32_t caps)
{
	struct drm_device *dev = mdp5_kms->dev;
	int i, ret;

	for (i = 0; i < cnt; i++) {
		struct mdp5_hw_pipe *hwpipe;

		hwpipe = FUNC3(pipes[i], offsets[i], caps);
		if (FUNC1(hwpipe)) {
			ret = FUNC2(hwpipe);
			FUNC0(dev->dev, "failed to construct pipe for %s (%d)\n",
					FUNC4(pipes[i]), ret);
			return ret;
		}
		hwpipe->idx = mdp5_kms->num_hwpipes;
		mdp5_kms->hwpipes[mdp5_kms->num_hwpipes++] = hwpipe;
	}

	return 0;
}