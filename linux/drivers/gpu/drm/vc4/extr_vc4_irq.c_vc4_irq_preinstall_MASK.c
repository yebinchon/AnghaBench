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
struct vc4_dev {int /*<<< orphan*/  overflow_mem_work; int /*<<< orphan*/  job_wait_queue; int /*<<< orphan*/  v3d; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V3D_DRIVER_IRQS ; 
 int /*<<< orphan*/  V3D_INTCTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vc4_dev* FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  vc4_overflow_mem_work ; 

void
FUNC4(struct drm_device *dev)
{
	struct vc4_dev *vc4 = FUNC3(dev);

	if (!vc4->v3d)
		return;

	FUNC2(&vc4->job_wait_queue);
	FUNC0(&vc4->overflow_mem_work, vc4_overflow_mem_work);

	/* Clear any pending interrupts someone might have left around
	 * for us.
	 */
	FUNC1(V3D_INTCTL, V3D_DRIVER_IRQS);
}