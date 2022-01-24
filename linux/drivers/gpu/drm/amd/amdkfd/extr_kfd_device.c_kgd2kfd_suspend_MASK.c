#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kfd_dev {TYPE_2__* dqm; int /*<<< orphan*/  init_complete; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* stop ) (TYPE_2__*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kfd_dev*) ; 
 int /*<<< orphan*/  kfd_locked ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

void FUNC4(struct kfd_dev *kfd)
{
	if (!kfd->init_complete)
		return;

	/* For first KFD device suspend all the KFD processes */
	if (FUNC0(&kfd_locked) == 1)
		FUNC2();

	kfd->dqm->ops.stop(kfd->dqm);

	FUNC1(kfd);
}