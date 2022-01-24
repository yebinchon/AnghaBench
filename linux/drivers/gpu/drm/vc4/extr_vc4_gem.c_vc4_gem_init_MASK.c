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
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct TYPE_3__ {int /*<<< orphan*/  timer; int /*<<< orphan*/  reset_work; } ;
struct vc4_dev {TYPE_2__ purgeable; int /*<<< orphan*/  power_lock; int /*<<< orphan*/  job_done_work; TYPE_1__ hangcheck; int /*<<< orphan*/  job_lock; int /*<<< orphan*/  seqno_cb_list; int /*<<< orphan*/  job_done_list; int /*<<< orphan*/  render_job_list; int /*<<< orphan*/  bin_job_list; int /*<<< orphan*/  dma_fence_context; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vc4_dev* FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  vc4_hangcheck_elapsed ; 
 int /*<<< orphan*/  vc4_job_done_work ; 
 int /*<<< orphan*/  vc4_reset_work ; 

void
FUNC7(struct drm_device *dev)
{
	struct vc4_dev *vc4 = FUNC6(dev);

	vc4->dma_fence_context = FUNC2(1);

	FUNC0(&vc4->bin_job_list);
	FUNC0(&vc4->render_job_list);
	FUNC0(&vc4->job_done_list);
	FUNC0(&vc4->seqno_cb_list);
	FUNC4(&vc4->job_lock);

	FUNC1(&vc4->hangcheck.reset_work, vc4_reset_work);
	FUNC5(&vc4->hangcheck.timer, vc4_hangcheck_elapsed, 0);

	FUNC1(&vc4->job_done_work, vc4_job_done_work);

	FUNC3(&vc4->power_lock);

	FUNC0(&vc4->purgeable.list);
	FUNC3(&vc4->purgeable.lock);
}