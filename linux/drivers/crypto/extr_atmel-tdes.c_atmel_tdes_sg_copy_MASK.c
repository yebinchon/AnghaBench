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
struct scatterlist {size_t length; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct scatterlist*,size_t,size_t,int) ; 
 struct scatterlist* FUNC2 (struct scatterlist*) ; 

__attribute__((used)) static int FUNC3(struct scatterlist **sg, size_t *offset,
			void *buf, size_t buflen, size_t total, int out)
{
	size_t count, off = 0;

	while (buflen && total) {
		count = FUNC0((*sg)->length - *offset, total);
		count = FUNC0(count, buflen);

		if (!count)
			return off;

		FUNC1(buf + off, *sg, *offset, count, out);

		off += count;
		buflen -= count;
		*offset += count;
		total -= count;

		if (*offset == (*sg)->length) {
			*sg = FUNC2(*sg);
			if (*sg)
				*offset = 0;
			else
				total = 0;
		}
	}

	return off;
}