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
struct rdma_ah_attr {TYPE_1__ roce; } ;
struct pvrdma_ah_attr {int /*<<< orphan*/  dmac; int /*<<< orphan*/  port_num; int /*<<< orphan*/  ah_flags; int /*<<< orphan*/  static_rate; int /*<<< orphan*/  src_path_bits; int /*<<< orphan*/  sl; int /*<<< orphan*/  dlid; int /*<<< orphan*/  grh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_ah_attr const*) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_ah_attr const*) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_ah_attr const*) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_ah_attr const*) ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_ah_attr const*) ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_ah_attr const*) ; 
 int /*<<< orphan*/  FUNC8 (struct rdma_ah_attr const*) ; 

void FUNC9(struct pvrdma_ah_attr *dst,
			    const struct rdma_ah_attr *src)
{
	FUNC0(&dst->grh, FUNC8(src));
	dst->dlid = FUNC3(src);
	dst->sl = FUNC6(src);
	dst->src_path_bits = FUNC4(src);
	dst->static_rate = FUNC7(src);
	dst->ah_flags = FUNC2(src);
	dst->port_num = FUNC5(src);
	FUNC1(&dst->dmac, src->roce.dmac, sizeof(dst->dmac));
}