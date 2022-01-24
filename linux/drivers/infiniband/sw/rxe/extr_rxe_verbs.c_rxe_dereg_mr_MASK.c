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
struct rxe_mem {struct rxe_mem* pd; int /*<<< orphan*/  state; } ;
struct ib_udata {int dummy; } ;
struct ib_mr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RXE_MEM_STATE_ZOMBIE ; 
 int /*<<< orphan*/  FUNC0 (struct rxe_mem*) ; 
 int /*<<< orphan*/  FUNC1 (struct rxe_mem*) ; 
 struct rxe_mem* FUNC2 (struct ib_mr*) ; 

__attribute__((used)) static int FUNC3(struct ib_mr *ibmr, struct ib_udata *udata)
{
	struct rxe_mem *mr = FUNC2(ibmr);

	mr->state = RXE_MEM_STATE_ZOMBIE;
	FUNC1(mr->pd);
	FUNC0(mr);
	FUNC1(mr);
	return 0;
}