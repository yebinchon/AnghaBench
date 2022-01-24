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
struct iova {unsigned long pfn_lo; unsigned long pfn_hi; } ;

/* Variables and functions */
 struct iova* FUNC0 () ; 

__attribute__((used)) static inline struct iova *
FUNC1(unsigned long pfn_lo, unsigned long pfn_hi)
{
	struct iova *iova;

	iova = FUNC0();
	if (iova) {
		iova->pfn_lo = pfn_lo;
		iova->pfn_hi = pfn_hi;
	}

	return iova;
}