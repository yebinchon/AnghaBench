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
struct mqd_manager {int dummy; } ;
struct kfd_mem_obj {int /*<<< orphan*/  gtt_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kfd_mem_obj*) ; 

void FUNC2(struct mqd_manager *mm, void *mqd,
			struct kfd_mem_obj *mqd_mem_obj)
{
	FUNC0(!mqd_mem_obj->gtt_mem);
	FUNC1(mqd_mem_obj);
}