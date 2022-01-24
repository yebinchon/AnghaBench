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
struct kfd_dev {int /*<<< orphan*/  gws; int /*<<< orphan*/  kgd; int /*<<< orphan*/  gtt_mem; int /*<<< orphan*/  dqm; scalar_t__ init_complete; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ hws_gws_support ; 
 int /*<<< orphan*/  FUNC3 (struct kfd_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct kfd_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct kfd_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct kfd_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct kfd_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct kfd_dev*) ; 

void FUNC9(struct kfd_dev *kfd)
{
	if (kfd->init_complete) {
		FUNC8(kfd);
		FUNC2(kfd->dqm);
		FUNC5(kfd);
		FUNC6(kfd);
		FUNC3(kfd);
		FUNC4(kfd);
		FUNC0(kfd->kgd, kfd->gtt_mem);
		if (hws_gws_support)
			FUNC1(kfd->kgd, kfd->gws);
	}

	FUNC7(kfd);
}