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
struct ib_mr {int dummy; } ;
struct c4iw_mr {scalar_t__ mpl_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  c4iw_set_page ; 
 int FUNC0 (struct ib_mr*,struct scatterlist*,int,unsigned int*,int /*<<< orphan*/ ) ; 
 struct c4iw_mr* FUNC1 (struct ib_mr*) ; 

int FUNC2(struct ib_mr *ibmr, struct scatterlist *sg, int sg_nents,
		   unsigned int *sg_offset)
{
	struct c4iw_mr *mhp = FUNC1(ibmr);

	mhp->mpl_len = 0;

	return FUNC0(ibmr, sg, sg_nents, sg_offset, c4iw_set_page);
}