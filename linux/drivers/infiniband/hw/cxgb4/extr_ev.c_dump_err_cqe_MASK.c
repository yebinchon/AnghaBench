#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct t4_cqe {int /*<<< orphan*/  len; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_6__ {TYPE_2__ lldi; } ;
struct c4iw_dev {TYPE_3__ rdev; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct t4_cqe*) ; 
 int /*<<< orphan*/  FUNC1 (struct t4_cqe*) ; 
 int /*<<< orphan*/  FUNC2 (struct t4_cqe*) ; 
 int /*<<< orphan*/  FUNC3 (struct t4_cqe*) ; 
 int /*<<< orphan*/  FUNC4 (struct t4_cqe*) ; 
 int /*<<< orphan*/  FUNC5 (struct t4_cqe*) ; 
 int /*<<< orphan*/  FUNC6 (struct t4_cqe*) ; 
 scalar_t__ FW_RI_RDMA_WRITE ; 
 scalar_t__ FW_RI_READ_RESP ; 
 scalar_t__ FUNC7 (struct t4_cqe*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct c4iw_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct c4iw_dev *dev, struct t4_cqe *err_cqe)
{
	__be64 *p = (void *)err_cqe;

	FUNC9(&dev->rdev.lldi.pdev->dev,
		"AE qpid %d opcode %d status 0x%x "
		"type %d len 0x%x wrid.hi 0x%x wrid.lo 0x%x\n",
		FUNC1(err_cqe), FUNC0(err_cqe),
		FUNC2(err_cqe), FUNC3(err_cqe), FUNC10(err_cqe->len),
		FUNC4(err_cqe), FUNC5(err_cqe));

	FUNC11("%016llx %016llx %016llx %016llx - %016llx %016llx %016llx %016llx\n",
		 FUNC8(p[0]), FUNC8(p[1]), FUNC8(p[2]),
		 FUNC8(p[3]), FUNC8(p[4]), FUNC8(p[5]),
		 FUNC8(p[6]), FUNC8(p[7]));

	/*
	 * Ingress WRITE and READ_RESP errors provide
	 * the offending stag, so parse and log it.
	 */
	if (FUNC7(err_cqe) && (FUNC0(err_cqe) == FW_RI_RDMA_WRITE ||
				 FUNC0(err_cqe) == FW_RI_READ_RESP))
		FUNC12(dev, FUNC6(err_cqe));
}