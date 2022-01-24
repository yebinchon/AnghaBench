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
struct komeda_pipeline_state {scalar_t__ active_comps; } ;
struct komeda_pipeline {int /*<<< orphan*/  id; } ;
struct komeda_dev {TYPE_2__* funcs; } ;
struct komeda_crtc_state {int /*<<< orphan*/  active_pipes; int /*<<< orphan*/  affected_pipes; } ;
struct komeda_crtc {struct completion* disable_done; struct komeda_pipeline* master; struct komeda_pipeline* slave; } ;
struct drm_crtc_state {int /*<<< orphan*/  state; } ;
struct drm_crtc {TYPE_4__* dev; TYPE_3__* state; } ;
struct completion {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  event_lock; struct komeda_dev* dev_private; } ;
struct TYPE_7__ {scalar_t__ active; TYPE_1__* commit; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* flush ) (struct komeda_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {struct completion flip_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_crtc*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct completion*) ; 
 int /*<<< orphan*/  FUNC6 (struct komeda_crtc*) ; 
 int /*<<< orphan*/  FUNC7 (struct komeda_pipeline*,int /*<<< orphan*/ ) ; 
 struct komeda_pipeline_state* FUNC8 (struct komeda_pipeline*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct komeda_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct komeda_crtc* FUNC12 (struct drm_crtc*) ; 
 struct komeda_crtc_state* FUNC13 (struct drm_crtc_state*) ; 
 int FUNC14 (struct completion*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(struct drm_crtc *crtc,
			   struct drm_crtc_state *old)
{
	struct komeda_crtc *kcrtc = FUNC12(crtc);
	struct komeda_crtc_state *old_st = FUNC13(old);
	struct komeda_dev *mdev = crtc->dev->dev_private;
	struct komeda_pipeline *master = kcrtc->master;
	struct komeda_pipeline *slave  = kcrtc->slave;
	struct completion *disable_done = &crtc->state->commit->flip_done;
	struct completion temp;
	int timeout;

	FUNC0("CRTC%d_DISABLE: active_pipes: 0x%x, affected: 0x%x.\n",
			 FUNC2(crtc),
			 old_st->active_pipes, old_st->affected_pipes);

	if (slave && FUNC4(slave->id, old_st->active_pipes))
		FUNC7(slave, old->state);

	if (FUNC4(master->id, old_st->active_pipes))
		FUNC7(master, old->state);

	/* crtc_disable has two scenarios according to the state->active switch.
	 * 1. active -> inactive
	 *    this commit is a disable commit. and the commit will be finished
	 *    or done after the disable operation. on this case we can directly
	 *    use the crtc->state->event to tracking the HW disable operation.
	 * 2. active -> active
	 *    the crtc->commit is not for disable, but a modeset operation when
	 *    crtc is active, such commit actually has been completed by 3
	 *    DRM operations:
	 *    crtc_disable, update_planes(crtc_flush), crtc_enable
	 *    so on this case the crtc->commit is for the whole process.
	 *    we can not use it for tracing the disable, we need a temporary
	 *    flip_done for tracing the disable. and crtc->state->event for
	 *    the crtc_enable operation.
	 *    That's also the reason why skip modeset commit in
	 *    komeda_crtc_atomic_flush()
	 */
	if (crtc->state->active) {
		struct komeda_pipeline_state *pipe_st;
		/* clear the old active_comps to zero */
		pipe_st = FUNC8(master, old->state);
		pipe_st->active_comps = 0;

		FUNC5(&temp);
		kcrtc->disable_done = &temp;
		disable_done = &temp;
	}

	mdev->funcs->flush(mdev, master->id, 0);

	/* wait the disable take affect.*/
	timeout = FUNC14(disable_done, HZ);
	if (timeout == 0) {
		FUNC1("disable pipeline%d timeout.\n", kcrtc->master->id);
		if (crtc->state->active) {
			unsigned long flags;

			FUNC9(&crtc->dev->event_lock, flags);
			kcrtc->disable_done = NULL;
			FUNC10(&crtc->dev->event_lock, flags);
		}
	}

	FUNC3(crtc);
	FUNC6(kcrtc);
}