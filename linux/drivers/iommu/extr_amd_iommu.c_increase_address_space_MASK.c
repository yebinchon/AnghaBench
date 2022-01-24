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
typedef  int /*<<< orphan*/  u64 ;
struct protection_domain {scalar_t__ mode; int /*<<< orphan*/  lock; int /*<<< orphan*/ * pt_root; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ PAGE_MODE_6_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC7(struct protection_domain *domain,
				   unsigned long address,
				   gfp_t gfp)
{
	unsigned long flags;
	bool ret = false;
	u64 *pte;

	FUNC5(&domain->lock, flags);

	if (address <= FUNC1(domain->mode) ||
	    FUNC2(domain->mode == PAGE_MODE_6_LEVEL))
		goto out;

	pte = (void *)FUNC3(gfp);
	if (!pte)
		goto out;

	*pte             = FUNC0(domain->mode,
					FUNC4(domain->pt_root));
	domain->pt_root  = pte;
	domain->mode    += 1;

	ret = true;

out:
	FUNC6(&domain->lock, flags);

	return ret;
}