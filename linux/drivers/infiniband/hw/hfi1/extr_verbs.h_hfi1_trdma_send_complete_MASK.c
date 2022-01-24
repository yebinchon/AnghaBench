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
struct rvt_swqe {int dummy; } ;
struct rvt_qp {int dummy; } ;
typedef  enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rvt_qp*,struct rvt_swqe*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rvt_qp*,struct rvt_swqe*) ; 

__attribute__((used)) static inline void FUNC2(struct rvt_qp *qp,
					    struct rvt_swqe *wqe,
					    enum ib_wc_status status)
{
	FUNC1(qp, wqe);
	FUNC0(qp, wqe, status);
}