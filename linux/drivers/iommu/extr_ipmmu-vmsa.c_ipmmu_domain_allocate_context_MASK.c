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
struct ipmmu_vmsa_domain {int dummy; } ;
struct ipmmu_vmsa_device {int num_ctx; int /*<<< orphan*/  lock; int /*<<< orphan*/  ctx; struct ipmmu_vmsa_domain** domains; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct ipmmu_vmsa_device *mmu,
					 struct ipmmu_vmsa_domain *domain)
{
	unsigned long flags;
	int ret;

	FUNC2(&mmu->lock, flags);

	ret = FUNC0(mmu->ctx, mmu->num_ctx);
	if (ret != mmu->num_ctx) {
		mmu->domains[ret] = domain;
		FUNC1(ret, mmu->ctx);
	} else
		ret = -EBUSY;

	FUNC3(&mmu->lock, flags);

	return ret;
}