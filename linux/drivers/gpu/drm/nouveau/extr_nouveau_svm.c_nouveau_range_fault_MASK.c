#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nouveau_svmm {TYPE_1__* mm; int /*<<< orphan*/  mirror; } ;
struct hmm_range {unsigned long pfn_flags_mask; scalar_t__ default_flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  HMM_RANGE_DEFAULT_TIMEOUT ; 
 long FUNC0 (struct hmm_range*,int /*<<< orphan*/ ) ; 
 long FUNC1 (struct hmm_range*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hmm_range*) ; 
 int /*<<< orphan*/  FUNC3 (struct hmm_range*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct nouveau_svmm *svmm, struct hmm_range *range)
{
	long ret;

	range->default_flags = 0;
	range->pfn_flags_mask = -1UL;

	ret = FUNC1(range, &svmm->mirror);
	if (ret) {
		FUNC4(&svmm->mm->mmap_sem);
		return (int)ret;
	}

	if (!FUNC3(range, HMM_RANGE_DEFAULT_TIMEOUT)) {
		FUNC4(&svmm->mm->mmap_sem);
		return -EBUSY;
	}

	ret = FUNC0(range, 0);
	if (ret <= 0) {
		if (ret == 0)
			ret = -EBUSY;
		FUNC4(&svmm->mm->mmap_sem);
		FUNC2(range);
		return ret;
	}
	return 0;
}