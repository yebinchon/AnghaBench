#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * dma_ops; } ;
struct TYPE_4__ {unsigned long long uverbs_cmd_mask; int num_comp_vectors; TYPE_3__ dev; int /*<<< orphan*/  node_type; } ;
struct rvt_dev_info {TYPE_1__ ibdev; scalar_t__ n_pds_allocated; int /*<<< orphan*/  n_pds_lock; int /*<<< orphan*/  n_cqs_lock; scalar_t__ n_ahs_allocated; int /*<<< orphan*/  n_ahs_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long long IB_USER_VERBS_CMD_ALLOC_PD ; 
 unsigned long long IB_USER_VERBS_CMD_ATTACH_MCAST ; 
 unsigned long long IB_USER_VERBS_CMD_CREATE_AH ; 
 unsigned long long IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL ; 
 unsigned long long IB_USER_VERBS_CMD_CREATE_CQ ; 
 unsigned long long IB_USER_VERBS_CMD_CREATE_QP ; 
 unsigned long long IB_USER_VERBS_CMD_CREATE_SRQ ; 
 unsigned long long IB_USER_VERBS_CMD_DEALLOC_PD ; 
 unsigned long long IB_USER_VERBS_CMD_DEREG_MR ; 
 unsigned long long IB_USER_VERBS_CMD_DESTROY_AH ; 
 unsigned long long IB_USER_VERBS_CMD_DESTROY_CQ ; 
 unsigned long long IB_USER_VERBS_CMD_DESTROY_QP ; 
 unsigned long long IB_USER_VERBS_CMD_DESTROY_SRQ ; 
 unsigned long long IB_USER_VERBS_CMD_DETACH_MCAST ; 
 unsigned long long IB_USER_VERBS_CMD_GET_CONTEXT ; 
 unsigned long long IB_USER_VERBS_CMD_MODIFY_AH ; 
 unsigned long long IB_USER_VERBS_CMD_MODIFY_QP ; 
 unsigned long long IB_USER_VERBS_CMD_MODIFY_SRQ ; 
 unsigned long long IB_USER_VERBS_CMD_POLL_CQ ; 
 unsigned long long IB_USER_VERBS_CMD_POST_RECV ; 
 unsigned long long IB_USER_VERBS_CMD_POST_SEND ; 
 unsigned long long IB_USER_VERBS_CMD_POST_SRQ_RECV ; 
 unsigned long long IB_USER_VERBS_CMD_QUERY_AH ; 
 unsigned long long IB_USER_VERBS_CMD_QUERY_DEVICE ; 
 unsigned long long IB_USER_VERBS_CMD_QUERY_PORT ; 
 unsigned long long IB_USER_VERBS_CMD_QUERY_QP ; 
 unsigned long long IB_USER_VERBS_CMD_QUERY_SRQ ; 
 unsigned long long IB_USER_VERBS_CMD_REG_MR ; 
 unsigned long long IB_USER_VERBS_CMD_REQ_NOTIFY_CQ ; 
 unsigned long long IB_USER_VERBS_CMD_RESIZE_CQ ; 
 int /*<<< orphan*/  RDMA_NODE_IB_CA ; 
 int _VERB_IDX_MAX ; 
 scalar_t__ FUNC0 (struct rvt_dev_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  dma_virt_ops ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct rvt_dev_info*) ; 
 int /*<<< orphan*/  rvt_dev_ops ; 
 int /*<<< orphan*/  FUNC6 (struct rvt_dev_info*) ; 
 int FUNC7 (struct rvt_dev_info*) ; 
 int FUNC8 (struct rvt_dev_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct rvt_dev_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct rvt_dev_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct rvt_dev_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct rvt_dev_info*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct rvt_dev_info*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct rvt_dev_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct rvt_dev_info*) ; 
 int FUNC16 (struct rvt_dev_info*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct rvt_dev_info*,char*) ; 

int FUNC19(struct rvt_dev_info *rdi)
{
	int ret = 0, i;

	if (!rdi)
		return -EINVAL;

	/*
	 * Check to ensure drivers have setup the required helpers for the verbs
	 * they want rdmavt to handle
	 */
	for (i = 0; i < _VERB_IDX_MAX; i++)
		if (FUNC0(rdi, i)) {
			FUNC4("Driver support req not met at %d\n", i);
			return -EINVAL;
		}

	FUNC3(&rdi->ibdev, &rvt_dev_ops);

	/* Once we get past here we can use rvt_pr macros and tracepoints */
	FUNC18(rdi, "Driver attempting registration");
	FUNC10(rdi);

	/* Queue Pairs */
	ret = FUNC8(rdi);
	if (ret) {
		FUNC4("Error in driver QP init.\n");
		return -EINVAL;
	}

	/* Address Handle */
	FUNC17(&rdi->n_ahs_lock);
	rdi->n_ahs_allocated = 0;

	/* Shared Receive Queue */
	FUNC9(rdi);

	/* Multicast */
	FUNC6(rdi);

	/* Mem Region */
	ret = FUNC7(rdi);
	if (ret) {
		FUNC4("Error in driver MR init.\n");
		goto bail_no_mr;
	}

	/* Memory Working Set Size */
	ret = FUNC16(rdi);
	if (ret) {
		FUNC12(rdi, "Error in WSS init.\n");
		goto bail_mr;
	}

	/* Completion queues */
	FUNC17(&rdi->n_cqs_lock);

	/* DMA Operations */
	rdi->ibdev.dev.dma_ops = rdi->ibdev.dev.dma_ops ? : &dma_virt_ops;

	/* Protection Domain */
	FUNC17(&rdi->n_pds_lock);
	rdi->n_pds_allocated = 0;

	/*
	 * There are some things which could be set by underlying drivers but
	 * really should be up to rdmavt to set. For instance drivers can't know
	 * exactly which functions rdmavt supports, nor do they know the ABI
	 * version, so we do all of this sort of stuff here.
	 */
	rdi->ibdev.uverbs_cmd_mask =
		(1ull << IB_USER_VERBS_CMD_GET_CONTEXT)         |
		(1ull << IB_USER_VERBS_CMD_QUERY_DEVICE)        |
		(1ull << IB_USER_VERBS_CMD_QUERY_PORT)          |
		(1ull << IB_USER_VERBS_CMD_ALLOC_PD)            |
		(1ull << IB_USER_VERBS_CMD_DEALLOC_PD)          |
		(1ull << IB_USER_VERBS_CMD_CREATE_AH)           |
		(1ull << IB_USER_VERBS_CMD_MODIFY_AH)           |
		(1ull << IB_USER_VERBS_CMD_QUERY_AH)            |
		(1ull << IB_USER_VERBS_CMD_DESTROY_AH)          |
		(1ull << IB_USER_VERBS_CMD_REG_MR)              |
		(1ull << IB_USER_VERBS_CMD_DEREG_MR)            |
		(1ull << IB_USER_VERBS_CMD_CREATE_COMP_CHANNEL) |
		(1ull << IB_USER_VERBS_CMD_CREATE_CQ)           |
		(1ull << IB_USER_VERBS_CMD_RESIZE_CQ)           |
		(1ull << IB_USER_VERBS_CMD_DESTROY_CQ)          |
		(1ull << IB_USER_VERBS_CMD_POLL_CQ)             |
		(1ull << IB_USER_VERBS_CMD_REQ_NOTIFY_CQ)       |
		(1ull << IB_USER_VERBS_CMD_CREATE_QP)           |
		(1ull << IB_USER_VERBS_CMD_QUERY_QP)            |
		(1ull << IB_USER_VERBS_CMD_MODIFY_QP)           |
		(1ull << IB_USER_VERBS_CMD_DESTROY_QP)          |
		(1ull << IB_USER_VERBS_CMD_POST_SEND)           |
		(1ull << IB_USER_VERBS_CMD_POST_RECV)           |
		(1ull << IB_USER_VERBS_CMD_ATTACH_MCAST)        |
		(1ull << IB_USER_VERBS_CMD_DETACH_MCAST)        |
		(1ull << IB_USER_VERBS_CMD_CREATE_SRQ)          |
		(1ull << IB_USER_VERBS_CMD_MODIFY_SRQ)          |
		(1ull << IB_USER_VERBS_CMD_QUERY_SRQ)           |
		(1ull << IB_USER_VERBS_CMD_DESTROY_SRQ)         |
		(1ull << IB_USER_VERBS_CMD_POST_SRQ_RECV);
	rdi->ibdev.node_type = RDMA_NODE_IB_CA;
	if (!rdi->ibdev.num_comp_vectors)
		rdi->ibdev.num_comp_vectors = 1;

	/* We are now good to announce we exist */
	ret = FUNC2(&rdi->ibdev, FUNC1(&rdi->ibdev.dev));
	if (ret) {
		FUNC12(rdi, "Failed to register driver with ib core.\n");
		goto bail_wss;
	}

	FUNC5(rdi);

	FUNC13(rdi, "Registration with rdmavt done.\n");
	return ret;

bail_wss:
	FUNC15(rdi);
bail_mr:
	FUNC11(rdi);

bail_no_mr:
	FUNC14(rdi);

	return ret;
}