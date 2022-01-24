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
 scalar_t__ FUNC1 (struct scatterlist*) ; 

__attribute__((used)) static inline struct scatterlist *FUNC2(struct scatterlist *sg)
{
	return FUNC1(sg) ? NULL : FUNC0(sg);
}