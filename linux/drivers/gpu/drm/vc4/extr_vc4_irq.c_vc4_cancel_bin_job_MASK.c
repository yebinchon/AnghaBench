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
struct vc4_exec_info {int /*<<< orphan*/  head; scalar_t__ perfmon; } ;
struct vc4_dev {int /*<<< orphan*/  bin_job_list; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct vc4_dev* FUNC1 (struct drm_device*) ; 
 struct vc4_exec_info* FUNC2 (struct vc4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct vc4_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 

__attribute__((used)) static void
FUNC5(struct drm_device *dev)
{
	struct vc4_dev *vc4 = FUNC1(dev);
	struct vc4_exec_info *exec = FUNC2(vc4);

	if (!exec)
		return;

	/* Stop the perfmon so that the next bin job can be started. */
	if (exec->perfmon)
		FUNC3(vc4, exec->perfmon, false);

	FUNC0(&exec->head, &vc4->bin_job_list);
	FUNC4(dev);
}