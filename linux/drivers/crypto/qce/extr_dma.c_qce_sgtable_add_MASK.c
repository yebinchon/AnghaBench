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
struct sg_table {struct scatterlist* sgl; } ;
struct scatterlist {int /*<<< orphan*/  offset; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct scatterlist* FUNC0 (int /*<<< orphan*/ ) ; 
 struct scatterlist* FUNC1 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct scatterlist *
FUNC4(struct sg_table *sgt, struct scatterlist *new_sgl)
{
	struct scatterlist *sg = sgt->sgl, *sg_last = NULL;

	while (sg) {
		if (!FUNC2(sg))
			break;
		sg = FUNC1(sg);
	}

	if (!sg)
		return FUNC0(-EINVAL);

	while (new_sgl && sg) {
		FUNC3(sg, FUNC2(new_sgl), new_sgl->length,
			    new_sgl->offset);
		sg_last = sg;
		sg = FUNC1(sg);
		new_sgl = FUNC1(new_sgl);
	}

	return sg_last;
}