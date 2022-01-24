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
struct bnxt_qplib_rcfw {int /*<<< orphan*/ * pdev; int /*<<< orphan*/  creq; int /*<<< orphan*/  cmdq; int /*<<< orphan*/  crsqe_tbl; int /*<<< orphan*/  qp_tbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct bnxt_qplib_rcfw *rcfw)
{
	FUNC1(rcfw->qp_tbl);
	FUNC1(rcfw->crsqe_tbl);
	FUNC0(rcfw->pdev, &rcfw->cmdq);
	FUNC0(rcfw->pdev, &rcfw->creq);
	rcfw->pdev = NULL;
}