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
struct scatterlist {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 unsigned int FUNC2 (struct scatterlist*) ; 
 struct scatterlist* FUNC3 (struct scatterlist*) ; 

__attribute__((used)) static int FUNC4(struct scatterlist *sg, unsigned int reqlen,
			 unsigned int entlen,
			 unsigned int skip)
{
	int nents = 0;
	unsigned int less;
	unsigned int skip_len = 0;

	while (sg && skip) {
		if (FUNC2(sg) <= skip) {
			skip -= FUNC2(sg);
			skip_len = 0;
			sg = FUNC3(sg);
		} else {
			skip_len = skip;
			skip = 0;
		}
	}

	while (sg && reqlen) {
		less = FUNC1(reqlen, FUNC2(sg) - skip_len);
		nents += FUNC0(less, entlen);
		reqlen -= less;
		skip_len = 0;
		sg = FUNC3(sg);
	}
	return nents;
}