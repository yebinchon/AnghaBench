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
struct kfd_dev {int /*<<< orphan*/  dqm; int /*<<< orphan*/  init_complete; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kfd_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct kfd_dev*) ; 

int FUNC3(struct kfd_dev *kfd)
{
	if (!kfd->init_complete)
		return 0;
	FUNC2(kfd);

	/* hold dqm->lock to prevent further execution*/
	FUNC0(kfd->dqm);

	FUNC1(kfd);
	return 0;
}