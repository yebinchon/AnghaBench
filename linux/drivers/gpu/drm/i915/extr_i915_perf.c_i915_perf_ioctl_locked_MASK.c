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
struct i915_perf_stream {int dummy; } ;

/* Variables and functions */
 long EINVAL ; 
#define  I915_PERF_IOCTL_DISABLE 129 
#define  I915_PERF_IOCTL_ENABLE 128 
 int /*<<< orphan*/  FUNC0 (struct i915_perf_stream*) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_perf_stream*) ; 

__attribute__((used)) static long FUNC2(struct i915_perf_stream *stream,
				   unsigned int cmd,
				   unsigned long arg)
{
	switch (cmd) {
	case I915_PERF_IOCTL_ENABLE:
		FUNC1(stream);
		return 0;
	case I915_PERF_IOCTL_DISABLE:
		FUNC0(stream);
		return 0;
	}

	return -EINVAL;
}