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
typedef  int /*<<< orphan*/  u32 ;
struct ipmmu_vmsa_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMCTR ; 
 int /*<<< orphan*/  IMCTR_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (struct ipmmu_vmsa_domain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipmmu_vmsa_domain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipmmu_vmsa_domain*) ; 

__attribute__((used)) static void FUNC3(struct ipmmu_vmsa_domain *domain)
{
	u32 reg;

	reg = FUNC0(domain, IMCTR);
	reg |= IMCTR_FLUSH;
	FUNC1(domain, IMCTR, reg);

	FUNC2(domain);
}