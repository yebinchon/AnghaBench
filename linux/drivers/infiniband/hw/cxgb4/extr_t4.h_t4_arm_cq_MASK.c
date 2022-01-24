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
typedef  int u32 ;
struct t4_cq {scalar_t__ cidx_inc; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ CIDXINC_M ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  CQ_ARMED ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct t4_cq*,int) ; 

__attribute__((used)) static inline int FUNC5(struct t4_cq *cq, int se)
{
	u32 val;

	FUNC3(CQ_ARMED, &cq->flags);
	while (cq->cidx_inc > CIDXINC_M) {
		val = FUNC1(0) | FUNC0(CIDXINC_M) | FUNC2(7);
		FUNC4(cq, val);
		cq->cidx_inc -= CIDXINC_M;
	}
	val = FUNC1(se) | FUNC0(cq->cidx_inc) | FUNC2(6);
	FUNC4(cq, val);
	cq->cidx_inc = 0;
	return 0;
}