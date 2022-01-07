
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ocrdma_rx_stats {scalar_t__ roce_frame_payload_len_drops; scalar_t__ roce_frame_icrc_drops; int roce_frames_hi; int roce_frames_lo; } ;
struct ocrdma_rdma_stats_resp {struct ocrdma_rx_stats rx_stats; } ;
struct TYPE_2__ {scalar_t__ va; } ;
struct ocrdma_dev {TYPE_1__ stats_mem; } ;


 scalar_t__ convert_to_64bit (int ,int ) ;

__attribute__((used)) static u64 ocrdma_sysfs_rcv_pkts(struct ocrdma_dev *dev)
{
 struct ocrdma_rdma_stats_resp *rdma_stats =
  (struct ocrdma_rdma_stats_resp *)dev->stats_mem.va;
 struct ocrdma_rx_stats *rx_stats = &rdma_stats->rx_stats;

 return convert_to_64bit(rx_stats->roce_frames_lo,
  rx_stats->roce_frames_hi) + (u64)rx_stats->roce_frame_icrc_drops
  + (u64)rx_stats->roce_frame_payload_len_drops;
}
