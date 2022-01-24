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
struct ocrdma_rx_stats {int /*<<< orphan*/  roce_frames_hi; int /*<<< orphan*/  roce_frames_lo; scalar_t__ srq_rnr_naks; scalar_t__ rq_rnr_naks; scalar_t__ rc_drop_count_lookup_errors; scalar_t__ nak_count_psn_sequence_errors; scalar_t__ roce_frame_rxmt_drops; scalar_t__ rnr_nak_receives; scalar_t__ rnr_nak_timeouts; scalar_t__ psn_error_resp_packets; scalar_t__ psn_error_request_packets; scalar_t__ qp1_drops; scalar_t__ ud_drops; scalar_t__ roce_frame_payload_len_drops; scalar_t__ roce_frame_icrc_drops; int /*<<< orphan*/  roce_frame_bytes_hi; int /*<<< orphan*/  roce_frame_bytes_lo; } ;
struct ocrdma_rdma_stats_resp {struct ocrdma_rx_stats rx_stats; } ;
struct TYPE_2__ {char* debugfs_mem; scalar_t__ va; } ;
struct ocrdma_dev {TYPE_1__ stats_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCRDMA_MAX_DBGFS_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC3(struct ocrdma_dev *dev)
{
	char *stats = dev->stats_mem.debugfs_mem, *pcur;
	struct ocrdma_rdma_stats_resp *rdma_stats =
		(struct ocrdma_rdma_stats_resp *)dev->stats_mem.va;
	struct ocrdma_rx_stats *rx_stats = &rdma_stats->rx_stats;

	FUNC1(stats, 0, (OCRDMA_MAX_DBGFS_MEM));

	pcur = stats;
	pcur += FUNC2
		(stats, pcur, "roce_frame_bytes",
		 FUNC0(rx_stats->roce_frame_bytes_lo,
		 rx_stats->roce_frame_bytes_hi));
	pcur += FUNC2(stats, pcur, "roce_frame_icrc_drops",
				(u64)rx_stats->roce_frame_icrc_drops);
	pcur += FUNC2(stats, pcur, "roce_frame_payload_len_drops",
				(u64)rx_stats->roce_frame_payload_len_drops);
	pcur += FUNC2(stats, pcur, "ud_drops",
				(u64)rx_stats->ud_drops);
	pcur += FUNC2(stats, pcur, "qp1_drops",
				(u64)rx_stats->qp1_drops);
	pcur += FUNC2(stats, pcur, "psn_error_request_packets",
				(u64)rx_stats->psn_error_request_packets);
	pcur += FUNC2(stats, pcur, "psn_error_resp_packets",
				(u64)rx_stats->psn_error_resp_packets);
	pcur += FUNC2(stats, pcur, "rnr_nak_timeouts",
				(u64)rx_stats->rnr_nak_timeouts);
	pcur += FUNC2(stats, pcur, "rnr_nak_receives",
				(u64)rx_stats->rnr_nak_receives);
	pcur += FUNC2(stats, pcur, "roce_frame_rxmt_drops",
				(u64)rx_stats->roce_frame_rxmt_drops);
	pcur += FUNC2(stats, pcur, "nak_count_psn_sequence_errors",
				(u64)rx_stats->nak_count_psn_sequence_errors);
	pcur += FUNC2(stats, pcur, "rc_drop_count_lookup_errors",
				(u64)rx_stats->rc_drop_count_lookup_errors);
	pcur += FUNC2(stats, pcur, "rq_rnr_naks",
				(u64)rx_stats->rq_rnr_naks);
	pcur += FUNC2(stats, pcur, "srq_rnr_naks",
				(u64)rx_stats->srq_rnr_naks);
	pcur += FUNC2(stats, pcur, "roce_frames",
				FUNC0(rx_stats->roce_frames_lo,
						 rx_stats->roce_frames_hi));

	return stats;
}