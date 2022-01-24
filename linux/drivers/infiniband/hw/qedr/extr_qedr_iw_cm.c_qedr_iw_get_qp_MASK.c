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
struct qedr_dev {int /*<<< orphan*/  qps; } ;
struct ib_qp {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 struct qedr_dev* FUNC0 (struct ib_device*) ; 
 struct ib_qp* FUNC1 (int /*<<< orphan*/ *,int) ; 

struct ib_qp *FUNC2(struct ib_device *ibdev, int qpn)
{
	struct qedr_dev *dev = FUNC0(ibdev);

	return FUNC1(&dev->qps, qpn);
}