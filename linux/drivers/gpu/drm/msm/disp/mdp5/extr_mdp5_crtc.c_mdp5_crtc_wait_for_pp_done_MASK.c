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
struct TYPE_3__ {TYPE_2__* mixer; } ;
struct mdp5_crtc_state {TYPE_1__ pipeline; } ;
struct mdp5_crtc {int /*<<< orphan*/  pp_completion; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;
struct drm_crtc {int /*<<< orphan*/  state; struct drm_device* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  lm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct mdp5_crtc* FUNC2 (struct drm_crtc*) ; 
 struct mdp5_crtc_state* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct mdp5_crtc *mdp5_crtc = FUNC2(crtc);
	struct mdp5_crtc_state *mdp5_cstate = FUNC3(crtc->state);
	int ret;

	ret = FUNC4(&mdp5_crtc->pp_completion,
						FUNC1(50));
	if (ret == 0)
		FUNC0(dev->dev, "pp done time out, lm=%d\n",
			 mdp5_cstate->pipeline.mixer->lm);
}