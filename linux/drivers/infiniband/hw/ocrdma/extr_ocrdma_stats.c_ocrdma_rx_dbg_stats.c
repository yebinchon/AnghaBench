
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocrdma_rx_dbg_stats {int* data; } ;
struct ocrdma_rdma_stats_resp {struct ocrdma_rx_dbg_stats rx_dbg_stats; } ;
struct TYPE_2__ {char* debugfs_mem; scalar_t__ va; } ;
struct ocrdma_dev {TYPE_1__ stats_mem; } ;


 int OCRDMA_MAX_DBGFS_MEM ;
 int memset (char*,int ,int ) ;
 int snprintf (char*,int,char*,int,int) ;

__attribute__((used)) static char *ocrdma_rx_dbg_stats(struct ocrdma_dev *dev)
{
 int i;
 char *pstats = dev->stats_mem.debugfs_mem;
 struct ocrdma_rdma_stats_resp *rdma_stats =
  (struct ocrdma_rdma_stats_resp *)dev->stats_mem.va;
 struct ocrdma_rx_dbg_stats *rx_dbg_stats =
  &rdma_stats->rx_dbg_stats;

 memset(pstats, 0, (OCRDMA_MAX_DBGFS_MEM));

 for (i = 0; i < 200; i++)
  pstats += snprintf(pstats, 80, "DW[%d] = 0x%x\n", i,
     rx_dbg_stats->data[i]);

 return dev->stats_mem.debugfs_mem;
}
