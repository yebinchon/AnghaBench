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
struct mdp5_ctl {int dummy; } ;
struct mdp5_crtc_state {struct mdp5_ctl* ctl; } ;
struct mdp5_crtc {int flushed_mask; int /*<<< orphan*/  id; } ;
struct drm_device {int /*<<< orphan*/  dev; TYPE_1__* vblank; } ;
struct drm_crtc {int /*<<< orphan*/  state; struct drm_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (struct drm_crtc*) ; 
 int FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 int FUNC4 (struct mdp5_ctl*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct mdp5_crtc* FUNC6 (struct drm_crtc*) ; 
 struct mdp5_crtc_state* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct drm_crtc *crtc)
{
	struct drm_device *dev = crtc->dev;
	struct mdp5_crtc *mdp5_crtc = FUNC6(crtc);
	struct mdp5_crtc_state *mdp5_cstate = FUNC7(crtc->state);
	struct mdp5_ctl *ctl = mdp5_cstate->ctl;
	int ret;

	/* Should not call this function if crtc is disabled. */
	if (!ctl)
		return;

	ret = FUNC2(crtc);
	if (ret)
		return;

	ret = FUNC8(dev->vblank[FUNC1(crtc)].queue,
		((FUNC4(ctl) &
		mdp5_crtc->flushed_mask) == 0),
		FUNC5(50));
	if (ret <= 0)
		FUNC0(dev->dev, "vblank time out, crtc=%d\n", mdp5_crtc->id);

	mdp5_crtc->flushed_mask = 0;

	FUNC3(crtc);
}