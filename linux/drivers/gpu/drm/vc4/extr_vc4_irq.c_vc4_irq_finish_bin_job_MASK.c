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
struct vc4_exec_info {scalar_t__ perfmon; } ;
struct vc4_dev {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct vc4_dev* FUNC0 (struct drm_device*) ; 
 struct vc4_exec_info* FUNC1 (struct vc4_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct vc4_exec_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 

__attribute__((used)) static void
FUNC4(struct drm_device *dev)
{
	struct vc4_dev *vc4 = FUNC0(dev);
	struct vc4_exec_info *next, *exec = FUNC1(vc4);

	if (!exec)
		return;

	FUNC2(dev, exec);
	next = FUNC1(vc4);

	/* Only submit the next job in the bin list if it matches the perfmon
	 * attached to the one that just finished (or if both jobs don't have
	 * perfmon attached to them).
	 */
	if (next && next->perfmon == exec->perfmon)
		FUNC3(dev);
}