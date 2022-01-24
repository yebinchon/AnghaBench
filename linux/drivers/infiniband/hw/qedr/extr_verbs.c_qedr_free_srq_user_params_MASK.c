#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  umem; int /*<<< orphan*/  pbl_tbl; int /*<<< orphan*/  pbl_info; } ;
struct qedr_srq {int /*<<< orphan*/  prod_umem; TYPE_1__ usrq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct qedr_srq *srq)
{
	FUNC1(srq->dev, &srq->usrq.pbl_info, srq->usrq.pbl_tbl);
	FUNC0(srq->usrq.umem);
	FUNC0(srq->prod_umem);
}