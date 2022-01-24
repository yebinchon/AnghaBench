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
typedef  unsigned long long uint64_t ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EINTR ; 
 int ERESTARTSYS ; 
 unsigned long jiffies ; 
 unsigned long long FUNC0 (unsigned long) ; 
 int FUNC1 (struct drm_device*,unsigned long long,unsigned long long,int) ; 

__attribute__((used)) static int
FUNC2(struct drm_device *dev,
				uint64_t seqno,
				uint64_t *timeout_ns)
{
	unsigned long start = jiffies;
	int ret = FUNC1(dev, seqno, *timeout_ns, true);

	if ((ret == -EINTR || ret == -ERESTARTSYS) && *timeout_ns != ~0ull) {
		uint64_t delta = FUNC0(jiffies - start);

		if (*timeout_ns >= delta)
			*timeout_ns -= delta;
	}

	return ret;
}