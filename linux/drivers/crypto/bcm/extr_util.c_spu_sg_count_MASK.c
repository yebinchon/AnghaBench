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
 scalar_t__ FUNC1 (struct scatterlist*,unsigned int,struct scatterlist**,unsigned int*) ; 

int FUNC2(struct scatterlist *sg_list, unsigned int skip, int nbytes)
{
	struct scatterlist *sg;
	int sg_nents = 0;
	unsigned int offset;

	if (!sg_list)
		return 0;

	if (FUNC1(sg_list, skip, &sg, &offset) < 0)
		return 0;

	while (sg && (nbytes > 0)) {
		sg_nents++;
		nbytes -= (sg->length - offset);
		offset = 0;
		sg = FUNC0(sg);
	}
	return sg_nents;
}