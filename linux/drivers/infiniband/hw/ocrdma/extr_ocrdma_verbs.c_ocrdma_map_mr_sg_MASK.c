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
struct ocrdma_mr {scalar_t__ npages; } ;
struct ib_mr {int dummy; } ;

/* Variables and functions */
 struct ocrdma_mr* FUNC0 (struct ib_mr*) ; 
 int FUNC1 (struct ib_mr*,struct scatterlist*,int,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ocrdma_set_page ; 

int FUNC2(struct ib_mr *ibmr, struct scatterlist *sg, int sg_nents,
		     unsigned int *sg_offset)
{
	struct ocrdma_mr *mr = FUNC0(ibmr);

	mr->npages = 0;

	return FUNC1(ibmr, sg, sg_nents, sg_offset, ocrdma_set_page);
}