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
typedef  int u32 ;
struct drm_file {int dummy; } ;
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
 long EBUSY ; 
 long ETIME ; 
 long ETIMEDOUT ; 
 int LIMA_GEM_WAIT_WRITE ; 
 long FUNC0 (struct drm_file*,int,int,long) ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct drm_file *file, u32 handle, u32 op, s64 timeout_ns)
{
	bool write = op & LIMA_GEM_WAIT_WRITE;
	long ret, timeout;

	if (!op)
		return 0;

	timeout = FUNC1(timeout_ns);

	ret = FUNC0(file, handle, write, timeout);
	if (ret == -ETIME)
		ret = timeout ? -ETIMEDOUT : -EBUSY;

	return ret;
}