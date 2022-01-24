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
struct mqd_manager {struct kfd_dev* dev; } ;
struct kfd_mem_obj {scalar_t__ gtt_mem; } ;
struct kfd_dev {int /*<<< orphan*/  kgd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct kfd_dev*,struct kfd_mem_obj*) ; 
 int /*<<< orphan*/  FUNC2 (struct kfd_mem_obj*) ; 

__attribute__((used)) static void FUNC3(struct mqd_manager *mm, void *mqd,
			struct kfd_mem_obj *mqd_mem_obj)
{
	struct kfd_dev *kfd = mm->dev;

	if (mqd_mem_obj->gtt_mem) {
		FUNC0(kfd->kgd, mqd_mem_obj->gtt_mem);
		FUNC2(mqd_mem_obj);
	} else {
		FUNC1(mm->dev, mqd_mem_obj);
	}
}