
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ocrdma_rx_qp_err_stats {scalar_t__ local_qp_operation_errors; scalar_t__ local_protection_errors; scalar_t__ local_length_errors; scalar_t__ nak_count_remote_access_errors; scalar_t__ nak_remote_operation_errors; scalar_t__ nak_invalid_requst_errors; } ;
struct ocrdma_rdma_stats_resp {struct ocrdma_rx_qp_err_stats rx_qp_err_stats; } ;
struct TYPE_2__ {char* debugfs_mem; scalar_t__ va; } ;
struct ocrdma_dev {TYPE_1__ stats_mem; } ;


 int OCRDMA_MAX_DBGFS_MEM ;
 int memset (char*,int ,int ) ;
 int ocrdma_add_stat (char*,char*,char*,int ) ;

__attribute__((used)) static char *ocrdma_rxqp_errstats(struct ocrdma_dev *dev)
{
 char *stats = dev->stats_mem.debugfs_mem, *pcur;
 struct ocrdma_rdma_stats_resp *rdma_stats =
  (struct ocrdma_rdma_stats_resp *)dev->stats_mem.va;
 struct ocrdma_rx_qp_err_stats *rx_qp_err_stats =
   &rdma_stats->rx_qp_err_stats;

 memset(stats, 0, (OCRDMA_MAX_DBGFS_MEM));

 pcur = stats;
 pcur += ocrdma_add_stat(stats, pcur, "nak_invalid_requst_errors",
   (u64)rx_qp_err_stats->nak_invalid_requst_errors);
 pcur += ocrdma_add_stat(stats, pcur, "nak_remote_operation_errors",
   (u64)rx_qp_err_stats->nak_remote_operation_errors);
 pcur += ocrdma_add_stat(stats, pcur, "nak_count_remote_access_errors",
   (u64)rx_qp_err_stats->nak_count_remote_access_errors);
 pcur += ocrdma_add_stat(stats, pcur, "local_length_errors",
   (u64)rx_qp_err_stats->local_length_errors);
 pcur += ocrdma_add_stat(stats, pcur, "local_protection_errors",
   (u64)rx_qp_err_stats->local_protection_errors);
 pcur += ocrdma_add_stat(stats, pcur, "local_qp_operation_errors",
   (u64)rx_qp_err_stats->local_qp_operation_errors);
 return stats;
}
