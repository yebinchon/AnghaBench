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
typedef  scalar_t__ uint64_t ;
struct vc4_dev {scalar_t__ finished_seqno; int /*<<< orphan*/  job_wait_queue; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ERESTARTSYS ; 
 int ETIME ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 
 struct vc4_dev* FUNC8 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_device*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*,scalar_t__) ; 
 int /*<<< orphan*/  wait ; 

int
FUNC11(struct drm_device *dev, uint64_t seqno, uint64_t timeout_ns,
		   bool interruptible)
{
	struct vc4_dev *vc4 = FUNC8(dev);
	int ret = 0;
	unsigned long timeout_expire;
	FUNC0(wait);

	if (vc4->finished_seqno >= seqno)
		return 0;

	if (timeout_ns == 0)
		return -ETIME;

	timeout_expire = jiffies + FUNC2(timeout_ns);

	FUNC9(dev, seqno, timeout_ns);
	for (;;) {
		FUNC3(&vc4->job_wait_queue, &wait,
				interruptible ? TASK_INTERRUPTIBLE :
				TASK_UNINTERRUPTIBLE);

		if (interruptible && FUNC6(current)) {
			ret = -ERESTARTSYS;
			break;
		}

		if (vc4->finished_seqno >= seqno)
			break;

		if (timeout_ns != ~0ull) {
			if (FUNC7(jiffies, timeout_expire)) {
				ret = -ETIME;
				break;
			}
			FUNC5(timeout_expire - jiffies);
		} else {
			FUNC4();
		}
	}

	FUNC1(&vc4->job_wait_queue, &wait);
	FUNC10(dev, seqno);

	return ret;
}