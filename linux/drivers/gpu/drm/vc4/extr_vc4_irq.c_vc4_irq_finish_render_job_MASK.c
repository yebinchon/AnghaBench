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
struct vc4_exec_info {scalar_t__ perfmon; int /*<<< orphan*/ * fence; int /*<<< orphan*/  head; } ;
struct vc4_dev {int /*<<< orphan*/  job_done_work; int /*<<< orphan*/  job_wait_queue; int /*<<< orphan*/  job_done_list; int /*<<< orphan*/  finished_seqno; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct vc4_dev* FUNC4 (struct drm_device*) ; 
 struct vc4_exec_info* FUNC5 (struct vc4_dev*) ; 
 struct vc4_exec_info* FUNC6 (struct vc4_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct vc4_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct drm_device *dev)
{
	struct vc4_dev *vc4 = FUNC4(dev);
	struct vc4_exec_info *exec = FUNC6(vc4);
	struct vc4_exec_info *nextbin, *nextrender;

	if (!exec)
		return;

	vc4->finished_seqno++;
	FUNC2(&exec->head, &vc4->job_done_list);

	nextbin = FUNC5(vc4);
	nextrender = FUNC6(vc4);

	/* Only stop the perfmon if following jobs in the queue don't expect it
	 * to be enabled.
	 */
	if (exec->perfmon && !nextrender &&
	    (!nextbin || nextbin->perfmon != exec->perfmon))
		FUNC7(vc4, exec->perfmon, true);

	/* If there's a render job waiting, start it. If this is not the case
	 * we may have to unblock the binner if it's been stalled because of
	 * perfmon (this can be checked by comparing the perfmon attached to
	 * the finished renderjob to the one attached to the next bin job: if
	 * they don't match, this means the binner is stalled and should be
	 * restarted).
	 */
	if (nextrender)
		FUNC9(dev);
	else if (nextbin && nextbin->perfmon != exec->perfmon)
		FUNC8(dev);

	if (exec->fence) {
		FUNC1(exec->fence);
		FUNC0(exec->fence);
		exec->fence = NULL;
	}

	FUNC10(&vc4->job_wait_queue);
	FUNC3(&vc4->job_done_work);
}