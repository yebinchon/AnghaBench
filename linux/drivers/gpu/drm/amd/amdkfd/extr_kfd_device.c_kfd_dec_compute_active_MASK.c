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
struct kfd_dev {int /*<<< orphan*/  kgd; int /*<<< orphan*/  compute_profile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct kfd_dev *kfd)
{
	int count = FUNC2(&kfd->compute_profile);

	if (count == 0)
		FUNC1(kfd->kgd, true);
	FUNC0(count < 0, "Compute profile ref. count error");
}