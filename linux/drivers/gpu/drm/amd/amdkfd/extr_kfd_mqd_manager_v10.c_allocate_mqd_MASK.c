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
struct v10_compute_mqd {int dummy; } ;
struct queue_properties {scalar_t__ type; int ctl_stack_size; } ;
struct kfd_mem_obj {int /*<<< orphan*/  cpu_ptr; int /*<<< orphan*/  gpu_addr; int /*<<< orphan*/  gtt_mem; } ;
struct kfd_dev {int /*<<< orphan*/  kgd; scalar_t__ cwsr_enabled; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ KFD_QUEUE_TYPE_COMPUTE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int) ; 
 int FUNC2 (struct kfd_dev*,int,struct kfd_mem_obj**) ; 
 int /*<<< orphan*/  FUNC3 (struct kfd_mem_obj*) ; 
 struct kfd_mem_obj* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct kfd_mem_obj *FUNC5(struct kfd_dev *kfd,
		struct queue_properties *q)
{
	int retval;
	struct kfd_mem_obj *mqd_mem_obj = NULL;

	/* From V9,  for CWSR, the control stack is located on the next page
	 * boundary after the mqd, we will use the gtt allocation function
	 * instead of sub-allocation function.
	 */
	if (kfd->cwsr_enabled && (q->type == KFD_QUEUE_TYPE_COMPUTE)) {
		mqd_mem_obj = FUNC4(sizeof(struct kfd_mem_obj), GFP_NOIO);
		if (!mqd_mem_obj)
			return NULL;
		retval = FUNC1(kfd->kgd,
			FUNC0(q->ctl_stack_size, PAGE_SIZE) +
				FUNC0(sizeof(struct v10_compute_mqd), PAGE_SIZE),
			&(mqd_mem_obj->gtt_mem),
			&(mqd_mem_obj->gpu_addr),
			(void *)&(mqd_mem_obj->cpu_ptr), true);
	} else {
		retval = FUNC2(kfd, sizeof(struct v10_compute_mqd),
				&mqd_mem_obj);
	}

	if (retval) {
		FUNC3(mqd_mem_obj);
		return NULL;
	}

	return mqd_mem_obj;

}