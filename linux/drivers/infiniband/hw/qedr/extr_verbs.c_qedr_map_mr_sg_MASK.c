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
struct qedr_mr {int /*<<< orphan*/  info; int /*<<< orphan*/  dev; scalar_t__ npages; } ;
struct ib_mr {int dummy; } ;

/* Variables and functions */
 struct qedr_mr* FUNC0 (struct ib_mr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ib_mr*,struct scatterlist*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qedr_set_page ; 

int FUNC3(struct ib_mr *ibmr, struct scatterlist *sg,
		   int sg_nents, unsigned int *sg_offset)
{
	struct qedr_mr *mr = FUNC0(ibmr);

	mr->npages = 0;

	FUNC1(mr->dev, &mr->info);
	return FUNC2(ibmr, sg, sg_nents, NULL, qedr_set_page);
}