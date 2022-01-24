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
struct vc4_exec_info {int /*<<< orphan*/  head; } ;
struct vc4_dev {int /*<<< orphan*/  render_job_list; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct vc4_dev* FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 

void
FUNC4(struct drm_device *dev, struct vc4_exec_info *exec)
{
	struct vc4_dev *vc4 = FUNC2(dev);
	bool was_empty = FUNC0(&vc4->render_job_list);

	FUNC1(&exec->head, &vc4->render_job_list);
	if (was_empty)
		FUNC3(dev);
}