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
struct msm_pending_timer {int /*<<< orphan*/  timer; } ;
struct msm_kms {unsigned int pending_crtc_mask; TYPE_1__* funcs; int /*<<< orphan*/  commit_lock; struct msm_pending_timer* pending_timers; } ;
struct msm_drm_private {struct msm_kms* kms; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct drm_crtc {int dummy; } ;
struct drm_atomic_state {struct drm_device* dev; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable_commit ) (struct msm_kms*) ;int /*<<< orphan*/  (* complete_commit ) (struct msm_kms*,unsigned int) ;int /*<<< orphan*/  (* wait_flush ) (struct msm_kms*,unsigned int) ;int /*<<< orphan*/  (* flush_commit ) (struct msm_kms*,unsigned int) ;int /*<<< orphan*/  (* vsync_time ) (struct msm_kms*,struct drm_crtc*) ;int /*<<< orphan*/  (* prepare_commit ) (struct msm_kms*,struct drm_atomic_state*) ;int /*<<< orphan*/  (* enable_commit ) (struct msm_kms*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct drm_atomic_state*,struct drm_crtc**) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*,struct drm_atomic_state*,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (struct drm_crtc*) ; 
 unsigned int FUNC8 (struct drm_crtc*) ; 
 unsigned int FUNC9 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct msm_kms*) ; 
 int /*<<< orphan*/  FUNC16 (struct msm_kms*,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct msm_kms*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC18 (struct msm_kms*,struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC19 (struct msm_kms*) ; 
 int /*<<< orphan*/  FUNC20 (struct msm_kms*,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (struct msm_kms*,unsigned int) ; 
 int /*<<< orphan*/  FUNC22 (struct msm_kms*,unsigned int) ; 
 int /*<<< orphan*/  FUNC23 (struct msm_kms*) ; 
 int /*<<< orphan*/  FUNC24 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC25 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC26 (unsigned int) ; 
 int /*<<< orphan*/  FUNC27 (unsigned int) ; 
 int /*<<< orphan*/  FUNC28 (unsigned int) ; 

void FUNC29(struct drm_atomic_state *state)
{
	struct drm_device *dev = state->dev;
	struct msm_drm_private *priv = dev->dev_private;
	struct msm_kms *kms = priv->kms;
	struct drm_crtc *async_crtc = NULL;
	unsigned crtc_mask = FUNC9(state);
	bool async = kms->funcs->vsync_time &&
			FUNC1(state, &async_crtc);

	FUNC25(async, crtc_mask);

	kms->funcs->enable_commit(kms);

	/*
	 * Ensure any previous (potentially async) commit has
	 * completed:
	 */
	FUNC28(crtc_mask);
	kms->funcs->wait_flush(kms, crtc_mask);
	FUNC27(crtc_mask);

	FUNC13(&kms->commit_lock);

	/*
	 * Now that there is no in-progress flush, prepare the
	 * current update:
	 */
	kms->funcs->prepare_commit(kms, state);

	/*
	 * Push atomic updates down to hardware:
	 */
	FUNC4(dev, state);
	FUNC6(dev, state, 0);
	FUNC5(dev, state);

	if (async) {
		struct msm_pending_timer *timer =
			&kms->pending_timers[FUNC7(async_crtc)];

		/* async updates are limited to single-crtc updates: */
		FUNC0(crtc_mask != FUNC8(async_crtc));

		/*
		 * Start timer if we don't already have an update pending
		 * on this crtc:
		 */
		if (!(kms->pending_crtc_mask & crtc_mask)) {
			ktime_t vsync_time, wakeup_time;

			kms->pending_crtc_mask |= crtc_mask;

			vsync_time = kms->funcs->vsync_time(kms, async_crtc);
			wakeup_time = FUNC11(vsync_time, FUNC12(1));

			FUNC10(&timer->timer, wakeup_time,
					HRTIMER_MODE_ABS);
		}

		kms->funcs->disable_commit(kms);
		FUNC14(&kms->commit_lock);

		/*
		 * At this point, from drm core's perspective, we
		 * are done with the atomic update, so we can just
		 * go ahead and signal that it is done:
		 */
		FUNC3(state);
		FUNC2(dev, state);

		FUNC24(async, crtc_mask);

		return;
	}

	/*
	 * If there is any async flush pending on updated crtcs, fold
	 * them into the current flush.
	 */
	kms->pending_crtc_mask &= ~crtc_mask;

	/*
	 * Flush hardware updates:
	 */
	FUNC26(crtc_mask);
	kms->funcs->flush_commit(kms, crtc_mask);
	FUNC14(&kms->commit_lock);

	/*
	 * Wait for flush to complete:
	 */
	FUNC28(crtc_mask);
	kms->funcs->wait_flush(kms, crtc_mask);
	FUNC27(crtc_mask);

	FUNC13(&kms->commit_lock);
	kms->funcs->complete_commit(kms, crtc_mask);
	FUNC14(&kms->commit_lock);
	kms->funcs->disable_commit(kms);

	FUNC3(state);
	FUNC2(dev, state);

	FUNC24(async, crtc_mask);
}