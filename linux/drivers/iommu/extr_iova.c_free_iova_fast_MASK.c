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
struct iova_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iova_domain*,unsigned long) ; 
 scalar_t__ FUNC1 (struct iova_domain*,unsigned long,unsigned long) ; 

void
FUNC2(struct iova_domain *iovad, unsigned long pfn, unsigned long size)
{
	if (FUNC1(iovad, pfn, size))
		return;

	FUNC0(iovad, pfn);
}