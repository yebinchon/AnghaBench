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
struct scatterlist {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct scatterlist* FUNC1 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sg_table*) ; 
 int /*<<< orphan*/  FUNC4 (struct sg_table*) ; 
 scalar_t__ FUNC5 (struct scatterlist*) ; 

__attribute__((used)) static void FUNC6(struct sg_table *st)
{
	struct scatterlist *sg;

	for (sg = st->sgl; sg; sg = FUNC1(sg)) {
		if (FUNC5(sg))
			FUNC0(FUNC5(sg), FUNC2(sg->length));
	}

	FUNC4(st);
	FUNC3(st);
}