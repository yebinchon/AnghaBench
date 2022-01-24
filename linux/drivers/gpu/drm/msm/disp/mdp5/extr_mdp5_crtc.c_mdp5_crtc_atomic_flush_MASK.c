#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mdp5_crtc_state {int /*<<< orphan*/  pp_done_irqmask; int /*<<< orphan*/  err_irqmask; int /*<<< orphan*/  vblank_irqmask; scalar_t__ cmd_mode; int /*<<< orphan*/  ctl; } ;
struct TYPE_7__ {int /*<<< orphan*/  irqmask; } ;
struct TYPE_6__ {int /*<<< orphan*/  irqmask; } ;
struct TYPE_5__ {int /*<<< orphan*/  irqmask; } ;
struct mdp5_crtc {TYPE_3__ pp_done; TYPE_2__ err; TYPE_1__ vblank; int /*<<< orphan*/  flushed_mask; int /*<<< orphan*/ * event; } ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_4__* state; int /*<<< orphan*/  name; struct drm_device* dev; } ;
struct TYPE_8__ {int /*<<< orphan*/ * event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PENDING_FLIP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mdp5_crtc* FUNC8 (struct drm_crtc*) ; 
 struct mdp5_crtc_state* FUNC9 (TYPE_4__*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct drm_crtc *crtc,
				   struct drm_crtc_state *old_crtc_state)
{
	struct mdp5_crtc *mdp5_crtc = FUNC8(crtc);
	struct mdp5_crtc_state *mdp5_cstate = FUNC9(crtc->state);
	struct drm_device *dev = crtc->dev;
	unsigned long flags;

	FUNC0("%s: event: %p", crtc->name, crtc->state->event);

	FUNC1(mdp5_crtc->event);

	FUNC6(&dev->event_lock, flags);
	mdp5_crtc->event = crtc->state->event;
	crtc->state->event = NULL;
	FUNC7(&dev->event_lock, flags);

	/*
	 * If no CTL has been allocated in mdp5_crtc_atomic_check(),
	 * it means we are trying to flush a CRTC whose state is disabled:
	 * nothing else needs to be done.
	 */
	/* XXX: Can this happen now ? */
	if (FUNC10(!mdp5_cstate->ctl))
		return;

	FUNC2(crtc);

	/* PP_DONE irq is only used by command mode for now.
	 * It is better to request pending before FLUSH and START trigger
	 * to make sure no pp_done irq missed.
	 * This is safe because no pp_done will happen before SW trigger
	 * in command mode.
	 */
	if (mdp5_cstate->cmd_mode)
		FUNC5(crtc);

	mdp5_crtc->flushed_mask = FUNC3(crtc);

	/* XXX are we leaking out state here? */
	mdp5_crtc->vblank.irqmask = mdp5_cstate->vblank_irqmask;
	mdp5_crtc->err.irqmask = mdp5_cstate->err_irqmask;
	mdp5_crtc->pp_done.irqmask = mdp5_cstate->pp_done_irqmask;

	FUNC4(crtc, PENDING_FLIP);
}