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
struct scatterlist {int offset; unsigned int length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct scatterlist* FUNC2 (struct scatterlist*) ; 

__attribute__((used)) static inline unsigned int FUNC3(struct scatterlist *sg)
{
	unsigned int page_sizes;

	page_sizes = 0;
	while (sg) {
		FUNC0(sg->offset);
		FUNC0(!FUNC1(sg->length, PAGE_SIZE));
		page_sizes |= sg->length;
		sg = FUNC2(sg);
	}

	return page_sizes;
}