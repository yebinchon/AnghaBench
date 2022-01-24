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
struct scatterlist {unsigned int length; } ;

/* Variables and functions */
 struct scatterlist* FUNC0 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*) ; 

__attribute__((used)) static inline struct scatterlist *FUNC3(struct scatterlist *to_sg,
						  struct scatterlist *from_sg,
						  int buflen)
{
	struct scatterlist *sg = to_sg;
	unsigned int sglen;

	for (; buflen && from_sg; buflen -= sglen) {
		sglen = from_sg->length;
		if (sglen > buflen)
			sglen = buflen;

		FUNC1(sg, FUNC2(from_sg), sglen);
		from_sg = FUNC0(from_sg);
		sg++;
	}

	return sg;
}