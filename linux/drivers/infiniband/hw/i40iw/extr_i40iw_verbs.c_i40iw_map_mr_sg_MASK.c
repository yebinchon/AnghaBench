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
struct i40iw_mr {scalar_t__ npages; } ;

/* Variables and functions */
 int /*<<< orphan*/  i40iw_set_page ; 
 int FUNC0 (struct ib_mr*,struct scatterlist*,int,unsigned int*,int /*<<< orphan*/ ) ; 
 struct i40iw_mr* FUNC1 (struct ib_mr*) ; 

__attribute__((used)) static int FUNC2(struct ib_mr *ibmr, struct scatterlist *sg,
			   int sg_nents, unsigned int *sg_offset)
{
	struct i40iw_mr *iwmr = FUNC1(ibmr);

	iwmr->npages = 0;
	return FUNC0(ibmr, sg, sg_nents, sg_offset, i40iw_set_page);
}