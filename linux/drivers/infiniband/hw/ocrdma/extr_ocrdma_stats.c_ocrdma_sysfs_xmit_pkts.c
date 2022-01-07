
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ocrdma_tx_stats {int ack_pkts_hi; int ack_pkts_lo; int read_rsp_pkts_hi; int read_rsp_pkts_lo; int read_pkts_hi; int read_pkts_lo; int write_pkts_hi; int write_pkts_lo; int send_pkts_hi; int send_pkts_lo; } ;
struct ocrdma_rdma_stats_resp {struct ocrdma_tx_stats tx_stats; } ;
struct TYPE_2__ {scalar_t__ va; } ;
struct ocrdma_dev {TYPE_1__ stats_mem; } ;


 scalar_t__ convert_to_64bit (int ,int ) ;

__attribute__((used)) static u64 ocrdma_sysfs_xmit_pkts(struct ocrdma_dev *dev)
{
 struct ocrdma_rdma_stats_resp *rdma_stats =
  (struct ocrdma_rdma_stats_resp *)dev->stats_mem.va;
 struct ocrdma_tx_stats *tx_stats = &rdma_stats->tx_stats;

 return (convert_to_64bit(tx_stats->send_pkts_lo,
     tx_stats->send_pkts_hi) +
 convert_to_64bit(tx_stats->write_pkts_lo, tx_stats->write_pkts_hi) +
 convert_to_64bit(tx_stats->read_pkts_lo, tx_stats->read_pkts_hi) +
 convert_to_64bit(tx_stats->read_rsp_pkts_lo,
    tx_stats->read_rsp_pkts_hi) +
 convert_to_64bit(tx_stats->ack_pkts_lo, tx_stats->ack_pkts_hi));
}
