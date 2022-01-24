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
struct siw_sqe {int dummy; } ;
struct TYPE_2__ {int irq_size; int orq_size; } ;
struct siw_qp {void* irq; TYPE_1__ attrs; void* orq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct siw_qp*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct siw_qp *qp, int irq_size, int orq_size)
{
	irq_size = FUNC0(irq_size);
	orq_size = FUNC0(orq_size);

	qp->attrs.irq_size = irq_size;
	qp->attrs.orq_size = orq_size;

	qp->irq = FUNC3(irq_size * sizeof(struct siw_sqe));
	if (!qp->irq) {
		FUNC1(qp, "irq malloc for %d failed\n", irq_size);
		qp->attrs.irq_size = 0;
		return -ENOMEM;
	}
	qp->orq = FUNC3(orq_size * sizeof(struct siw_sqe));
	if (!qp->orq) {
		FUNC1(qp, "orq malloc for %d failed\n", orq_size);
		qp->attrs.orq_size = 0;
		qp->attrs.irq_size = 0;
		FUNC2(qp->irq);
		return -ENOMEM;
	}
	FUNC1(qp, "ORD %d, IRD %d\n", orq_size, irq_size);
	return 0;
}