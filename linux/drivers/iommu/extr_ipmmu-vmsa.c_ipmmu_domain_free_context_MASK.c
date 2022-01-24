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
struct ipmmu_vmsa_device {int /*<<< orphan*/  lock; int /*<<< orphan*/ ** domains; int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct ipmmu_vmsa_device *mmu,
				      unsigned int context_id)
{
	unsigned long flags;

	FUNC1(&mmu->lock, flags);

	FUNC0(context_id, mmu->ctx);
	mmu->domains[context_id] = NULL;

	FUNC2(&mmu->lock, flags);
}