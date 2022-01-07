
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ocrdma_tx_qp_err_stats {scalar_t__ rnr_retry_count_exceeded_errors; scalar_t__ retry_count_exceeded_errors; scalar_t__ local_qp_operation_errors; scalar_t__ local_protection_errors; scalar_t__ local_length_errors; } ;
struct ocrdma_rdma_stats_resp {struct ocrdma_tx_qp_err_stats tx_qp_err_stats; } ;
struct TYPE_2__ {char* debugfs_mem; scalar_t__ va; } ;
struct ocrdma_dev {TYPE_1__ stats_mem; } ;


 int OCRDMA_MAX_DBGFS_MEM ;
 int memset (char*,int ,int ) ;
 int ocrdma_add_stat (char*,char*,char*,int ) ;

__attribute__((used)) static char *ocrdma_txqp_errstats(struct ocrdma_dev *dev)
{
 char *stats = dev->stats_mem.debugfs_mem, *pcur;
 struct ocrdma_rdma_stats_resp *rdma_stats =
  (struct ocrdma_rdma_stats_resp *)dev->stats_mem.va;
 struct ocrdma_tx_qp_err_stats *tx_qp_err_stats =
  &rdma_stats->tx_qp_err_stats;

 memset(stats, 0, (OCRDMA_MAX_DBGFS_MEM));

 pcur = stats;
 pcur += ocrdma_add_stat(stats, pcur, "local_length_errors",
   (u64)tx_qp_err_stats->local_length_errors);
 pcur += ocrdma_add_stat(stats, pcur, "local_protection_errors",
   (u64)tx_qp_err_stats->local_protection_errors);
 pcur += ocrdma_add_stat(stats, pcur, "local_qp_operation_errors",
   (u64)tx_qp_err_stats->local_qp_operation_errors);
 pcur += ocrdma_add_stat(stats, pcur, "retry_count_exceeded_errors",
   (u64)tx_qp_err_stats->retry_count_exceeded_errors);
 pcur += ocrdma_add_stat(stats, pcur, "rnr_retry_count_exceeded_errors",
   (u64)tx_qp_err_stats->rnr_retry_count_exceeded_errors);
 return stats;
}
