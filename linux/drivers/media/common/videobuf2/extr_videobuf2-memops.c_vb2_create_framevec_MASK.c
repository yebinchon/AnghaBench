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
struct frame_vector {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 struct frame_vector* FUNC0 (int) ; 
 unsigned int FOLL_FORCE ; 
 unsigned int FOLL_WRITE ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 struct frame_vector* FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct frame_vector*) ; 
 int FUNC3 (unsigned long,unsigned long,unsigned int,struct frame_vector*) ; 
 int /*<<< orphan*/  FUNC4 (struct frame_vector*) ; 

struct frame_vector *FUNC5(unsigned long start,
					 unsigned long length)
{
	int ret;
	unsigned long first, last;
	unsigned long nr;
	struct frame_vector *vec;
	unsigned int flags = FOLL_FORCE | FOLL_WRITE;

	first = start >> PAGE_SHIFT;
	last = (start + length - 1) >> PAGE_SHIFT;
	nr = last - first + 1;
	vec = FUNC1(nr);
	if (!vec)
		return FUNC0(-ENOMEM);
	ret = FUNC3(start & PAGE_MASK, nr, flags, vec);
	if (ret < 0)
		goto out_destroy;
	/* We accept only complete set of PFNs */
	if (ret != nr) {
		ret = -EFAULT;
		goto out_release;
	}
	return vec;
out_release:
	FUNC4(vec);
out_destroy:
	FUNC2(vec);
	return FUNC0(ret);
}