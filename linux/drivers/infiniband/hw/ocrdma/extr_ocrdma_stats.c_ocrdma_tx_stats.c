
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ocrdma_tx_stats {scalar_t__ ack_timeouts; int read_rsp_bytes_hi; int read_rsp_bytes_lo; int read_req_bytes_hi; int read_req_bytes_lo; int write_bytes_hi; int write_bytes_lo; int send_bytes_hi; int send_bytes_lo; int ack_pkts_hi; int ack_pkts_lo; int read_rsp_pkts_hi; int read_rsp_pkts_lo; int read_pkts_hi; int read_pkts_lo; int write_pkts_hi; int write_pkts_lo; int send_pkts_hi; int send_pkts_lo; } ;
struct ocrdma_rdma_stats_resp {struct ocrdma_tx_stats tx_stats; } ;
struct TYPE_2__ {char* debugfs_mem; scalar_t__ va; } ;
struct ocrdma_dev {TYPE_1__ stats_mem; } ;


 int OCRDMA_MAX_DBGFS_MEM ;
 int convert_to_64bit (int ,int ) ;
 int memset (char*,int ,int ) ;
 int ocrdma_add_stat (char*,char*,char*,int ) ;

__attribute__((used)) static char *ocrdma_tx_stats(struct ocrdma_dev *dev)
{
 char *stats = dev->stats_mem.debugfs_mem, *pcur;
 struct ocrdma_rdma_stats_resp *rdma_stats =
  (struct ocrdma_rdma_stats_resp *)dev->stats_mem.va;
 struct ocrdma_tx_stats *tx_stats = &rdma_stats->tx_stats;

 memset(stats, 0, (OCRDMA_MAX_DBGFS_MEM));

 pcur = stats;
 pcur += ocrdma_add_stat(stats, pcur, "send_pkts",
    convert_to_64bit(tx_stats->send_pkts_lo,
       tx_stats->send_pkts_hi));
 pcur += ocrdma_add_stat(stats, pcur, "write_pkts",
    convert_to_64bit(tx_stats->write_pkts_lo,
       tx_stats->write_pkts_hi));
 pcur += ocrdma_add_stat(stats, pcur, "read_pkts",
    convert_to_64bit(tx_stats->read_pkts_lo,
       tx_stats->read_pkts_hi));
 pcur += ocrdma_add_stat(stats, pcur, "read_rsp_pkts",
    convert_to_64bit(tx_stats->read_rsp_pkts_lo,
       tx_stats->read_rsp_pkts_hi));
 pcur += ocrdma_add_stat(stats, pcur, "ack_pkts",
    convert_to_64bit(tx_stats->ack_pkts_lo,
       tx_stats->ack_pkts_hi));
 pcur += ocrdma_add_stat(stats, pcur, "send_bytes",
    convert_to_64bit(tx_stats->send_bytes_lo,
       tx_stats->send_bytes_hi));
 pcur += ocrdma_add_stat(stats, pcur, "write_bytes",
    convert_to_64bit(tx_stats->write_bytes_lo,
       tx_stats->write_bytes_hi));
 pcur += ocrdma_add_stat(stats, pcur, "read_req_bytes",
    convert_to_64bit(tx_stats->read_req_bytes_lo,
       tx_stats->read_req_bytes_hi));
 pcur += ocrdma_add_stat(stats, pcur, "read_rsp_bytes",
    convert_to_64bit(tx_stats->read_rsp_bytes_lo,
       tx_stats->read_rsp_bytes_hi));
 pcur += ocrdma_add_stat(stats, pcur, "ack_timeouts",
    (u64)tx_stats->ack_timeouts);

 return stats;
}
