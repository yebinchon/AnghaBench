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
struct iova_domain {int /*<<< orphan*/ * rcaches; } ;

/* Variables and functions */
 unsigned int IOVA_RANGE_CACHE_MAX_SIZE ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC1 (unsigned long) ; 

__attribute__((used)) static unsigned long FUNC2(struct iova_domain *iovad,
				     unsigned long size,
				     unsigned long limit_pfn)
{
	unsigned int log_size = FUNC1(size);

	if (log_size >= IOVA_RANGE_CACHE_MAX_SIZE)
		return 0;

	return FUNC0(&iovad->rcaches[log_size], limit_pfn - size);
}