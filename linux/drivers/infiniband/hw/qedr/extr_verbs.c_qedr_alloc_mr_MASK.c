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
typedef  int /*<<< orphan*/  u32 ;
struct ib_mr {int dummy; } ;
struct qedr_mr {struct ib_mr ibmr; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int dummy; } ;
typedef  enum ib_mr_type { ____Placeholder_ib_mr_type } ib_mr_type ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct ib_mr* FUNC0 (int /*<<< orphan*/ ) ; 
 int IB_MR_TYPE_MEM_REG ; 
 scalar_t__ FUNC1 (struct qedr_mr*) ; 
 struct qedr_mr* FUNC2 (struct ib_pd*,int /*<<< orphan*/ ) ; 

struct ib_mr *FUNC3(struct ib_pd *ibpd, enum ib_mr_type mr_type,
			    u32 max_num_sg, struct ib_udata *udata)
{
	struct qedr_mr *mr;

	if (mr_type != IB_MR_TYPE_MEM_REG)
		return FUNC0(-EINVAL);

	mr = FUNC2(ibpd, max_num_sg);

	if (FUNC1(mr))
		return FUNC0(-EINVAL);

	return &mr->ibmr;
}