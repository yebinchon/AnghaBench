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
struct kfd_dev {int /*<<< orphan*/  init_complete; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kfd_locked ; 
 int FUNC2 (struct kfd_dev*) ; 
 int FUNC3 () ; 

int FUNC4(struct kfd_dev *kfd)
{
	int ret, count;

	if (!kfd->init_complete)
		return 0;

	ret = FUNC2(kfd);
	if (ret)
		return ret;

	count = FUNC1(&kfd_locked);
	FUNC0(count < 0, "KFD suspend / resume ref. error");
	if (count == 0)
		ret = FUNC3();

	return ret;
}