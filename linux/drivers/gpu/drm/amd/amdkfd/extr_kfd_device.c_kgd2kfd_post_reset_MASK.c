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
struct kfd_dev {int /*<<< orphan*/  sram_ecc_flag; int /*<<< orphan*/  dqm; int /*<<< orphan*/  init_complete; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kfd_locked ; 
 int FUNC3 (struct kfd_dev*) ; 

int FUNC4(struct kfd_dev *kfd)
{
	int ret, count;

	if (!kfd->init_complete)
		return 0;

	FUNC2(kfd->dqm);

	ret = FUNC3(kfd);
	if (ret)
		return ret;
	count = FUNC0(&kfd_locked);

	FUNC1(&kfd->sram_ecc_flag, 0);

	return 0;
}