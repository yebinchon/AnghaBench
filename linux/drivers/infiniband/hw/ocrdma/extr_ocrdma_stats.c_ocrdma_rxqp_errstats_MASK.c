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
typedef  int /*<<< orphan*/  u64 ;
struct ocrdma_rx_qp_err_stats {scalar_t__ local_qp_operation_errors; scalar_t__ local_protection_errors; scalar_t__ local_length_errors; scalar_t__ nak_count_remote_access_errors; scalar_t__ nak_remote_operation_errors; scalar_t__ nak_invalid_requst_errors; } ;
struct ocrdma_rdma_stats_resp {struct ocrdma_rx_qp_err_stats rx_qp_err_stats; } ;
struct TYPE_2__ {char* debugfs_mem; scalar_t__ va; } ;
struct ocrdma_dev {TYPE_1__ stats_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCRDMA_MAX_DBGFS_MEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC2(struct ocrdma_dev *dev)
{
	char *stats = dev->stats_mem.debugfs_mem, *pcur;
	struct ocrdma_rdma_stats_resp *rdma_stats =
		(struct ocrdma_rdma_stats_resp *)dev->stats_mem.va;
	struct ocrdma_rx_qp_err_stats *rx_qp_err_stats =
		 &rdma_stats->rx_qp_err_stats;

	FUNC0(stats, 0, (OCRDMA_MAX_DBGFS_MEM));

	pcur = stats;
	pcur += FUNC1(stats, pcur, "nak_invalid_requst_errors",
			(u64)rx_qp_err_stats->nak_invalid_requst_errors);
	pcur += FUNC1(stats, pcur, "nak_remote_operation_errors",
			(u64)rx_qp_err_stats->nak_remote_operation_errors);
	pcur += FUNC1(stats, pcur, "nak_count_remote_access_errors",
			(u64)rx_qp_err_stats->nak_count_remote_access_errors);
	pcur += FUNC1(stats, pcur, "local_length_errors",
			(u64)rx_qp_err_stats->local_length_errors);
	pcur += FUNC1(stats, pcur, "local_protection_errors",
			(u64)rx_qp_err_stats->local_protection_errors);
	pcur += FUNC1(stats, pcur, "local_qp_operation_errors",
			(u64)rx_qp_err_stats->local_qp_operation_errors);
	return stats;
}