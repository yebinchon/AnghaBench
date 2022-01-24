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
struct vc4_exec_info {scalar_t__ perfmon; scalar_t__ ct0ca; scalar_t__ ct0ea; } ;
struct vc4_dev {scalar_t__ active_perfmon; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct vc4_dev* FUNC1 (struct drm_device*) ; 
 struct vc4_exec_info* FUNC2 (struct vc4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct vc4_exec_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct vc4_dev*,scalar_t__) ; 

void
FUNC6(struct drm_device *dev)
{
	struct vc4_dev *vc4 = FUNC1(dev);
	struct vc4_exec_info *exec;

again:
	exec = FUNC2(vc4);
	if (!exec)
		return;

	FUNC3(dev);

	/* Only start the perfmon if it was not already started by a previous
	 * job.
	 */
	if (exec->perfmon && vc4->active_perfmon != exec->perfmon)
		FUNC5(vc4, exec->perfmon);

	/* Either put the job in the binner if it uses the binner, or
	 * immediately move it to the to-be-rendered queue.
	 */
	if (exec->ct0ca != exec->ct0ea) {
		FUNC0(dev, 0, exec->ct0ca, exec->ct0ea);
	} else {
		struct vc4_exec_info *next;

		FUNC4(dev, exec);
		next = FUNC2(vc4);

		/* We can't start the next bin job if the previous job had a
		 * different perfmon instance attached to it. The same goes
		 * if one of them had a perfmon attached to it and the other
		 * one doesn't.
		 */
		if (next && next->perfmon == exec->perfmon)
			goto again;
	}
}