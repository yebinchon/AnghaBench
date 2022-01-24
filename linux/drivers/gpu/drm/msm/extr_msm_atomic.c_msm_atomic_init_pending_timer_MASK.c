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
struct TYPE_2__ {int /*<<< orphan*/  function; } ;
struct msm_pending_timer {int crtc_idx; int /*<<< orphan*/  work; TYPE_1__ timer; struct msm_kms* kms; } ;
struct msm_kms {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msm_atomic_pending_timer ; 
 int /*<<< orphan*/  msm_atomic_pending_work ; 

void FUNC2(struct msm_pending_timer *timer,
		struct msm_kms *kms, int crtc_idx)
{
	timer->kms = kms;
	timer->crtc_idx = crtc_idx;
	FUNC1(&timer->timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
	timer->timer.function = msm_atomic_pending_timer;
	FUNC0(&timer->work, msm_atomic_pending_work);
}