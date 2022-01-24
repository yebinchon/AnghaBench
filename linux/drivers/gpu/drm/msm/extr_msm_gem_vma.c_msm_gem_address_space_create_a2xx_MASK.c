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
typedef  int uint64_t ;
typedef  int u64 ;
struct msm_gpu {int dummy; } ;
struct msm_gem_address_space {char const* name; int /*<<< orphan*/  kref; int /*<<< orphan*/  mm; int /*<<< orphan*/  mmu; int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct msm_gem_address_space* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct msm_gem_address_space* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct msm_gem_address_space *
FUNC6(struct device *dev, struct msm_gpu *gpu,
		const char *name, uint64_t va_start, uint64_t va_end)
{
	struct msm_gem_address_space *aspace;
	u64 size = va_end - va_start;

	aspace = FUNC3(sizeof(*aspace), GFP_KERNEL);
	if (!aspace)
		return FUNC0(-ENOMEM);

	FUNC5(&aspace->lock);
	aspace->name = name;
	aspace->mmu = FUNC4(dev, gpu);

	FUNC1(&aspace->mm, (va_start >> PAGE_SHIFT),
		size >> PAGE_SHIFT);

	FUNC2(&aspace->kref);

	return aspace;
}