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
typedef  int /*<<< orphan*/  u32 ;
struct ipmmu_vmsa_domain {unsigned int context_id; TYPE_1__* mmu; } ;
struct TYPE_2__ {struct TYPE_2__* root; } ;

/* Variables and functions */
 unsigned int IM_CTX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ipmmu_vmsa_domain *domain,
				unsigned int reg, u32 data)
{
	if (domain->mmu != domain->mmu->root)
		FUNC0(domain->mmu,
			    domain->context_id * IM_CTX_SIZE + reg, data);

	FUNC0(domain->mmu->root,
		    domain->context_id * IM_CTX_SIZE + reg, data);
}