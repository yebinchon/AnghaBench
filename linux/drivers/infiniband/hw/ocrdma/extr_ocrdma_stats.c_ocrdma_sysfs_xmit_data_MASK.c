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
typedef  int u64 ;
struct ocrdma_tx_stats {int /*<<< orphan*/  read_rsp_bytes_hi; int /*<<< orphan*/  read_rsp_bytes_lo; int /*<<< orphan*/  read_req_bytes_hi; int /*<<< orphan*/  read_req_bytes_lo; int /*<<< orphan*/  write_bytes_hi; int /*<<< orphan*/  write_bytes_lo; int /*<<< orphan*/  send_bytes_hi; int /*<<< orphan*/  send_bytes_lo; } ;
struct ocrdma_rdma_stats_resp {struct ocrdma_tx_stats tx_stats; } ;
struct TYPE_2__ {scalar_t__ va; } ;
struct ocrdma_dev {TYPE_1__ stats_mem; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 FUNC1(struct ocrdma_dev *dev)
{
	struct ocrdma_rdma_stats_resp *rdma_stats =
		(struct ocrdma_rdma_stats_resp *)dev->stats_mem.va;
	struct ocrdma_tx_stats *tx_stats = &rdma_stats->tx_stats;

	return (FUNC0(tx_stats->send_bytes_lo,
				 tx_stats->send_bytes_hi) +
		FUNC0(tx_stats->write_bytes_lo,
				 tx_stats->write_bytes_hi) +
		FUNC0(tx_stats->read_req_bytes_lo,
				 tx_stats->read_req_bytes_hi) +
		FUNC0(tx_stats->read_rsp_bytes_lo,
				 tx_stats->read_rsp_bytes_hi))/4;
}