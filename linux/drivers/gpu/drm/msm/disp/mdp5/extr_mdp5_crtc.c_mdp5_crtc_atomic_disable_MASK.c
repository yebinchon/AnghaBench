#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mdp5_kms {TYPE_2__* dev; int /*<<< orphan*/  base; TYPE_1__* pdev; } ;
struct mdp5_crtc_state {scalar_t__ cmd_mode; } ;
struct mdp5_crtc {int enabled; int event; int /*<<< orphan*/  err; int /*<<< orphan*/  pp_done; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_3__* state; int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * event; int /*<<< orphan*/  active; } ;
struct TYPE_5__ {int /*<<< orphan*/  event_lock; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 struct mdp5_kms* FUNC4 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mdp5_crtc* FUNC9 (struct drm_crtc*) ; 
 struct mdp5_crtc_state* FUNC10 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC11(struct drm_crtc *crtc,
				     struct drm_crtc_state *old_state)
{
	struct mdp5_crtc *mdp5_crtc = FUNC9(crtc);
	struct mdp5_crtc_state *mdp5_cstate = FUNC10(crtc->state);
	struct mdp5_kms *mdp5_kms = FUNC4(crtc);
	struct device *dev = &mdp5_kms->pdev->dev;
	unsigned long flags;

	FUNC0("%s", crtc->name);

	if (FUNC1(!mdp5_crtc->enabled))
		return;

	/* Disable/save vblank irq handling before power is disabled */
	FUNC3(crtc);

	if (mdp5_cstate->cmd_mode)
		FUNC5(&mdp5_kms->base, &mdp5_crtc->pp_done);

	FUNC5(&mdp5_kms->base, &mdp5_crtc->err);
	FUNC6(dev);

	if (crtc->state->event && !crtc->state->active) {
		FUNC1(mdp5_crtc->event);
		FUNC7(&mdp5_kms->dev->event_lock, flags);
		FUNC2(crtc, crtc->state->event);
		crtc->state->event = NULL;
		FUNC8(&mdp5_kms->dev->event_lock, flags);
	}

	mdp5_crtc->enabled = false;
}