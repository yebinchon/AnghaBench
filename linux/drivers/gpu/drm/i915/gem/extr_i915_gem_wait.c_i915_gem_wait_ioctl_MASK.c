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
struct drm_i915_gem_wait {scalar_t__ flags; scalar_t__ timeout_ns; int /*<<< orphan*/  bo_handle; } ;
struct drm_i915_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 long EAGAIN ; 
 int EINVAL ; 
 int ENOENT ; 
 long ETIME ; 
 int I915_WAIT_ALL ; 
 int I915_WAIT_INTERRUPTIBLE ; 
 int I915_WAIT_PRIORITY ; 
 struct drm_i915_gem_object* FUNC0 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_gem_object*) ; 
 long FUNC2 (struct drm_i915_gem_object*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

int
FUNC8(struct drm_device *dev, void *data, struct drm_file *file)
{
	struct drm_i915_gem_wait *args = data;
	struct drm_i915_gem_object *obj;
	ktime_t start;
	long ret;

	if (args->flags != 0)
		return -EINVAL;

	obj = FUNC0(file, args->bo_handle);
	if (!obj)
		return -ENOENT;

	start = FUNC3();

	ret = FUNC2(obj,
				   I915_WAIT_INTERRUPTIBLE |
				   I915_WAIT_PRIORITY |
				   I915_WAIT_ALL,
				   FUNC7(args->timeout_ns));

	if (args->timeout_ns > 0) {
		args->timeout_ns -= FUNC5(FUNC4(FUNC3(), start));
		if (args->timeout_ns < 0)
			args->timeout_ns = 0;

		/*
		 * Apparently ktime isn't accurate enough and occasionally has a
		 * bit of mismatch in the jiffies<->nsecs<->ktime loop. So patch
		 * things up to make the test happy. We allow up to 1 jiffy.
		 *
		 * This is a regression from the timespec->ktime conversion.
		 */
		if (ret == -ETIME && !FUNC6(args->timeout_ns))
			args->timeout_ns = 0;

		/* Asked to wait beyond the jiffie/scheduler precision? */
		if (ret == -ETIME && args->timeout_ns)
			ret = -EAGAIN;
	}

	FUNC1(obj);
	return ret;
}