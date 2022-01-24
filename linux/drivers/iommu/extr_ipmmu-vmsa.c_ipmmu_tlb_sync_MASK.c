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
struct ipmmu_vmsa_domain {TYPE_1__* mmu; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMCTR ; 
 int IMCTR_FLUSH ; 
 unsigned int TLB_LOOP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct ipmmu_vmsa_domain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct ipmmu_vmsa_domain *domain)
{
	unsigned int count = 0;

	while (FUNC2(domain, IMCTR) & IMCTR_FLUSH) {
		FUNC0();
		if (++count == TLB_LOOP_TIMEOUT) {
			FUNC1(domain->mmu->dev,
			"TLB sync timed out -- MMU may be deadlocked\n");
			return;
		}
		FUNC3(1);
	}
}