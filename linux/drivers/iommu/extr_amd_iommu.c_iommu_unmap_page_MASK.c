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
typedef  unsigned long long u64 ;
struct protection_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned long) ; 
 unsigned long long* FUNC2 (struct protection_domain*,unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long long) ; 

__attribute__((used)) static unsigned long FUNC4(struct protection_domain *dom,
				      unsigned long bus_addr,
				      unsigned long page_size)
{
	unsigned long long unmapped;
	unsigned long unmap_size;
	u64 *pte;

	FUNC0(!FUNC3(page_size));

	unmapped = 0;

	while (unmapped < page_size) {

		pte = FUNC2(dom, bus_addr, &unmap_size);

		if (pte) {
			int i, count;

			count = FUNC1(unmap_size);
			for (i = 0; i < count; i++)
				pte[i] = 0ULL;
		}

		bus_addr  = (bus_addr & ~(unmap_size - 1)) + unmap_size;
		unmapped += unmap_size;
	}

	FUNC0(unmapped && !FUNC3(unmapped));

	return unmapped;
}