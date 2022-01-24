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
 struct scatterlist* FUNC0 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct scatterlist *FUNC3(struct scatterlist *sg)
{
	++sg;
	if (FUNC2(FUNC1(sg)))
		sg = FUNC0(sg);
	return sg;
}