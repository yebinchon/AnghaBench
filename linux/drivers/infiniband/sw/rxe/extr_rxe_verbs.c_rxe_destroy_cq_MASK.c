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
struct rxe_cq {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_cq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rxe_cq*) ; 
 int /*<<< orphan*/  FUNC1 (struct rxe_cq*) ; 
 struct rxe_cq* FUNC2 (struct ib_cq*) ; 

__attribute__((used)) static void FUNC3(struct ib_cq *ibcq, struct ib_udata *udata)
{
	struct rxe_cq *cq = FUNC2(ibcq);

	FUNC0(cq);

	FUNC1(cq);
}