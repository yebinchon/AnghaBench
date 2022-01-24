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
struct timespec {int dummy; } ;
struct etnaviv_gpu {int /*<<< orphan*/  fence_event; } ;
struct etnaviv_gem_object {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 long ERESTARTSYS ; 
 int ETIMEDOUT ; 
 unsigned long FUNC0 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (struct etnaviv_gem_object*) ; 
 long FUNC2 (int /*<<< orphan*/ ,int,unsigned long) ; 

int FUNC3(struct etnaviv_gpu *gpu,
	struct etnaviv_gem_object *etnaviv_obj, struct timespec *timeout)
{
	unsigned long remaining;
	long ret;

	if (!timeout)
		return !FUNC1(etnaviv_obj) ? 0 : -EBUSY;

	remaining = FUNC0(timeout);

	ret = FUNC2(gpu->fence_event,
					       !FUNC1(etnaviv_obj),
					       remaining);
	if (ret > 0)
		return 0;
	else if (ret == -ERESTARTSYS)
		return -ERESTARTSYS;
	else
		return -ETIMEDOUT;
}