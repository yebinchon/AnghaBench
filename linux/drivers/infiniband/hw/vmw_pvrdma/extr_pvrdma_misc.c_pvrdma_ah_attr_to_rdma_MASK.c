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
struct TYPE_2__ {int /*<<< orphan*/  dmac; } ;
struct rdma_ah_attr {TYPE_1__ roce; int /*<<< orphan*/  type; } ;
struct pvrdma_ah_attr {int /*<<< orphan*/  dmac; int /*<<< orphan*/  port_num; int /*<<< orphan*/  ah_flags; int /*<<< orphan*/  static_rate; int /*<<< orphan*/  src_path_bits; int /*<<< orphan*/  sl; int /*<<< orphan*/  dlid; int /*<<< orphan*/  grh; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  RDMA_AH_ATTR_TYPE_ROCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 

void FUNC9(struct rdma_ah_attr *dst,
			    const struct pvrdma_ah_attr *src)
{
	dst->type = RDMA_AH_ATTR_TYPE_ROCE;
	FUNC1(FUNC2(dst), &src->grh);
	FUNC4(dst, src->dlid);
	FUNC7(dst, src->sl);
	FUNC5(dst, src->src_path_bits);
	FUNC8(dst, src->static_rate);
	FUNC3(dst, src->ah_flags);
	FUNC6(dst, src->port_num);
	FUNC0(dst->roce.dmac, &src->dmac, ETH_ALEN);
}