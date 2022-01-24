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
struct vmw_cmdbuf_man {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmw_cmdbuf_man*) ; 
 int FUNC1 (struct vmw_cmdbuf_man*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vmw_cmdbuf_man*) ; 

int FUNC3(struct vmw_cmdbuf_man *man,
			 bool interruptible)
{
	int ret = FUNC1(man, interruptible);

	if (ret)
		return ret;

	FUNC0(man);
	FUNC2(man);

	return 0;
}