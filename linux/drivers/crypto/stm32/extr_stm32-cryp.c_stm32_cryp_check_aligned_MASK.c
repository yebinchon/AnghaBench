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
struct scatterlist {size_t offset; size_t length; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 struct scatterlist* FUNC1 (struct scatterlist*) ; 

__attribute__((used)) static int FUNC2(struct scatterlist *sg, size_t total,
				    size_t align)
{
	int len = 0;

	if (!total)
		return 0;

	if (!FUNC0(total, align))
		return -EINVAL;

	while (sg) {
		if (!FUNC0(sg->offset, sizeof(u32)))
			return -EINVAL;

		if (!FUNC0(sg->length, align))
			return -EINVAL;

		len += sg->length;
		sg = FUNC1(sg);
	}

	if (len != total)
		return -EINVAL;

	return 0;
}