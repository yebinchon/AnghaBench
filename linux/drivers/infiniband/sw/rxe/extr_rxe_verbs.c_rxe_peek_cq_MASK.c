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
struct rxe_cq {int /*<<< orphan*/  queue; } ;
struct ib_cq {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct rxe_cq* FUNC1 (struct ib_cq*) ; 

__attribute__((used)) static int FUNC2(struct ib_cq *ibcq, int wc_cnt)
{
	struct rxe_cq *cq = FUNC1(ibcq);
	int count = FUNC0(cq->queue);

	return (count > wc_cnt) ? wc_cnt : count;
}