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
typedef  int /*<<< orphan*/  u32 ;
struct rdma_ah_attr {int dummy; } ;
struct mthca_ah {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_ah {int /*<<< orphan*/  pd; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rdma_ah_attr*,struct mthca_ah*) ; 
 struct mthca_ah* FUNC1 (struct ib_ah*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ib_ah *ibah, struct rdma_ah_attr *ah_attr,
			   u32 flags, struct ib_udata *udata)

{
	struct mthca_ah *ah = FUNC1(ibah);

	return FUNC0(FUNC2(ibah->device), FUNC3(ibah->pd), ah_attr,
			       ah);
}