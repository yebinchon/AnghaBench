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
struct iova_domain {int /*<<< orphan*/  rbroot; } ;
struct iova {int dummy; } ;

/* Variables and functions */
 struct iova* FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct iova*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct iova *
FUNC2(struct iova_domain *iovad,
	unsigned long pfn_lo, unsigned long pfn_hi)
{
	struct iova *iova;

	iova = FUNC0(pfn_lo, pfn_hi);
	if (iova)
		FUNC1(&iovad->rbroot, iova, NULL);

	return iova;
}