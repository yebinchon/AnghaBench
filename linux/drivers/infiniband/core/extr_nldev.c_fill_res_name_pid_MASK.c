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
struct sk_buff {int dummy; } ;
struct rdma_restrack_entry {int /*<<< orphan*/  task; int /*<<< orphan*/  kern_name; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_RES_KERN_NAME ; 
 int /*<<< orphan*/  RDMA_NLDEV_ATTR_RES_PID ; 
 scalar_t__ FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct rdma_restrack_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *msg,
			     struct rdma_restrack_entry *res)
{
	/*
	 * For user resources, user is should read /proc/PID/comm to get the
	 * name of the task file.
	 */
	if (FUNC2(res)) {
		if (FUNC0(msg, RDMA_NLDEV_ATTR_RES_KERN_NAME,
		    res->kern_name))
			return -EMSGSIZE;
	} else {
		if (FUNC1(msg, RDMA_NLDEV_ATTR_RES_PID,
		    FUNC3(res->task)))
			return -EMSGSIZE;
	}
	return 0;
}