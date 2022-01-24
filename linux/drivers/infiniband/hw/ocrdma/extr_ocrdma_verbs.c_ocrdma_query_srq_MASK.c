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
struct ocrdma_srq {int dummy; } ;
struct ib_srq_attr {int dummy; } ;
struct ib_srq {int dummy; } ;

/* Variables and functions */
 struct ocrdma_srq* FUNC0 (struct ib_srq*) ; 
 int FUNC1 (struct ocrdma_srq*,struct ib_srq_attr*) ; 

int FUNC2(struct ib_srq *ibsrq, struct ib_srq_attr *srq_attr)
{
	int status;
	struct ocrdma_srq *srq;

	srq = FUNC0(ibsrq);
	status = FUNC1(srq, srq_attr);
	return status;
}