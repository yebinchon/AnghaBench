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
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct scatterlist* FUNC2 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*) ; 
 scalar_t__ FUNC4 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*) ; 

__attribute__((used)) static void FUNC6(struct scatterlist *sgl)
{
	while (sgl) {
		struct scatterlist *sg;

		for (sg = sgl; !FUNC3(sg); sg++) {
			FUNC1(FUNC5(sg));
			if (FUNC4(sg))
				break;
		}

		sg = FUNC4(sg) ? NULL : FUNC2(sg);
		FUNC0((unsigned long)sgl);
		sgl = sg;
	}
}