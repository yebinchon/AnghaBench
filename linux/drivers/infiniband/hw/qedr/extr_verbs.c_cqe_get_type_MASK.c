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
struct rdma_cqe_requester {int /*<<< orphan*/  flags; } ;
union rdma_cqe {struct rdma_cqe_requester req; } ;
typedef  enum rdma_cqe_type { ____Placeholder_rdma_cqe_type } rdma_cqe_type ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDMA_CQE_REQUESTER_TYPE ; 

__attribute__((used)) static enum rdma_cqe_type FUNC1(union rdma_cqe *cqe)
{
	struct rdma_cqe_requester *resp_cqe = &cqe->req;

	return FUNC0(resp_cqe->flags, RDMA_CQE_REQUESTER_TYPE);
}