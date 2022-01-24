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
typedef  scalar_t__ u64 ;
struct protection_domain {scalar_t__ mode; int /*<<< orphan*/  glx; int /*<<< orphan*/  gcr3_tbl; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PAGE_MODE_NONE ; 
 int FUNC0 (struct protection_domain*,int) ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(struct protection_domain *domain, int pasid)
{
	u64 *pte;

	if (domain->mode != PAGE_MODE_NONE)
		return -EINVAL;

	pte = FUNC1(domain->gcr3_tbl, domain->glx, pasid, false);
	if (pte == NULL)
		return 0;

	*pte = 0;

	return FUNC0(domain, pasid);
}