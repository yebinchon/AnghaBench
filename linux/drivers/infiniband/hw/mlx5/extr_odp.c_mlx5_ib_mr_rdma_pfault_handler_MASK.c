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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ r_key; scalar_t__ rdma_va; scalar_t__ rdma_op_len; scalar_t__ packet_size; } ;
struct mlx5_pagefault {scalar_t__ bytes_committed; int /*<<< orphan*/  token; int /*<<< orphan*/  type; TYPE_1__ rdma; } ;
struct mlx5_ib_dev {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOENT ; 
 scalar_t__ MAX_PREFETCH_LEN ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_dev*,char*,int,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_dev*,struct mlx5_pagefault*,int) ; 
 int FUNC3 (struct mlx5_ib_dev*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct mlx5_ib_dev *dev,
					   struct mlx5_pagefault *pfault)
{
	u64 address;
	u32 length;
	u32 prefetch_len = pfault->bytes_committed;
	int prefetch_activated = 0;
	u32 rkey = pfault->rdma.r_key;
	int ret;

	/* The RDMA responder handler handles the page fault in two parts.
	 * First it brings the necessary pages for the current packet
	 * (and uses the pfault context), and then (after resuming the QP)
	 * prefetches more pages. The second operation cannot use the pfault
	 * context and therefore uses the dummy_pfault context allocated on
	 * the stack */
	pfault->rdma.rdma_va += pfault->bytes_committed;
	pfault->rdma.rdma_op_len -= FUNC0(pfault->bytes_committed,
					 pfault->rdma.rdma_op_len);
	pfault->bytes_committed = 0;

	address = pfault->rdma.rdma_va;
	length  = pfault->rdma.rdma_op_len;

	/* For some operations, the hardware cannot tell the exact message
	 * length, and in those cases it reports zero. Use prefetch
	 * logic. */
	if (length == 0) {
		prefetch_activated = 1;
		length = pfault->rdma.packet_size;
		prefetch_len = FUNC0(MAX_PREFETCH_LEN, prefetch_len);
	}

	ret = FUNC3(dev, NULL, rkey, address, length,
					    &pfault->bytes_committed, NULL,
					    0);
	if (ret == -EAGAIN) {
		/* We're racing with an invalidation, don't prefetch */
		prefetch_activated = 0;
	} else if (ret < 0 || FUNC4(address, length) > ret) {
		FUNC2(dev, pfault, 1);
		if (ret != -ENOENT)
			FUNC1(dev, "PAGE FAULT error %d. QP 0x%x, type: 0x%x\n",
				    ret, pfault->token, pfault->type);
		return;
	}

	FUNC2(dev, pfault, 0);
	FUNC1(dev, "PAGE FAULT completed. QP 0x%x, type: 0x%x, prefetch_activated: %d\n",
		    pfault->token, pfault->type,
		    prefetch_activated);

	/* At this point, there might be a new pagefault already arriving in
	 * the eq, switch to the dummy pagefault for the rest of the
	 * processing. We're still OK with the objects being alive as the
	 * work-queue is being fenced. */

	if (prefetch_activated) {
		u32 bytes_committed = 0;

		ret = FUNC3(dev, NULL, rkey, address,
						    prefetch_len,
						    &bytes_committed, NULL,
						    0);
		if (ret < 0 && ret != -EAGAIN) {
			FUNC1(dev, "Prefetch failed. ret: %d, QP 0x%x, address: 0x%.16llx, length = 0x%.16x\n",
				    ret, pfault->token, address, prefetch_len);
		}
	}
}