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
typedef  scalar_t__ u64 ;
struct scatterlist {scalar_t__ length; } ;

/* Variables and functions */
 struct scatterlist* FUNC0 (struct scatterlist*) ; 

__attribute__((used)) static u64 FUNC1(struct scatterlist *sg)
{
	u64 total = 0;

	for (total = 0; sg; sg = FUNC0(sg))
		total += sg->length;

	return total;
}