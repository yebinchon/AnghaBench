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
struct siw_qp {struct ib_qp* ib_qp; } ;
struct ib_qp {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 struct siw_qp* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct siw_qp*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*) ; 

__attribute__((used)) static struct ib_qp *FUNC3(struct ib_device *base_dev, int id)
{
	struct siw_qp *qp = FUNC0(FUNC2(base_dev), id);

	if (qp) {
		/*
		 * siw_qp_id2obj() increments object reference count
		 */
		FUNC1(qp);
		return qp->ib_qp;
	}
	return NULL;
}