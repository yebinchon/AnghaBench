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
struct rxe_ah {int /*<<< orphan*/  av; } ;
struct rdma_ah_attr {int /*<<< orphan*/  type; } ;
struct ib_ah {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rdma_ah_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct rdma_ah_attr*) ; 
 struct rxe_ah* FUNC2 (struct ib_ah*) ; 

__attribute__((used)) static int FUNC3(struct ib_ah *ibah, struct rdma_ah_attr *attr)
{
	struct rxe_ah *ah = FUNC2(ibah);

	FUNC0(attr, 0, sizeof(*attr));
	attr->type = ibah->type;
	FUNC1(&ah->av, attr);
	return 0;
}