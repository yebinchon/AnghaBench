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
typedef  scalar_t__ u64 ;
struct drm_v3d_wait_bo {scalar_t__ timeout_ns; scalar_t__ pad; int /*<<< orphan*/  handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ETIME ; 
 int FUNC0 (struct drm_file*,int /*<<< orphan*/ ,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (scalar_t__) ; 

int
FUNC5(struct drm_device *dev, void *data,
		  struct drm_file *file_priv)
{
	int ret;
	struct drm_v3d_wait_bo *args = data;
	ktime_t start = FUNC1();
	u64 delta_ns;
	unsigned long timeout_jiffies =
		FUNC4(args->timeout_ns);

	if (args->pad != 0)
		return -EINVAL;

	ret = FUNC0(file_priv, args->handle,
					      true, timeout_jiffies);

	/* Decrement the user's timeout, in case we got interrupted
	 * such that the ioctl will be restarted.
	 */
	delta_ns = FUNC3(FUNC2(FUNC1(), start));
	if (delta_ns < args->timeout_ns)
		args->timeout_ns -= delta_ns;
	else
		args->timeout_ns = 0;

	/* Asked to wait beyond the jiffie/scheduler precision? */
	if (ret == -ETIME && args->timeout_ns)
		ret = -EAGAIN;

	return ret;
}