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

/* Variables and functions */
 unsigned int PAGE_SIZE ; 
 unsigned int SCATTERLIST_MAX_SEGMENT ; 
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 unsigned int FUNC1 () ; 

__attribute__((used)) static inline unsigned int FUNC2(void)
{
	unsigned int size = FUNC1();

	if (size == 0)
		return SCATTERLIST_MAX_SEGMENT;

	size = FUNC0(size, PAGE_SIZE);
	/* swiotlb_max_segment_size can return 1 byte when it means one page. */
	if (size < PAGE_SIZE)
		size = PAGE_SIZE;

	return size;
}