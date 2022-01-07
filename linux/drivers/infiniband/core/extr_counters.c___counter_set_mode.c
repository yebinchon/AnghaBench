
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_counter_mode {scalar_t__ mode; int mask; } ;
typedef enum rdma_nl_counter_mode { ____Placeholder_rdma_nl_counter_mode } rdma_nl_counter_mode ;
typedef enum rdma_nl_counter_mask { ____Placeholder_rdma_nl_counter_mask } rdma_nl_counter_mask ;


 int ALL_AUTO_MODE_MASKS ;
 int EINVAL ;
 int RDMA_COUNTER_MODE_AUTO ;
 scalar_t__ RDMA_COUNTER_MODE_NONE ;

__attribute__((used)) static int __counter_set_mode(struct rdma_counter_mode *curr,
         enum rdma_nl_counter_mode new_mode,
         enum rdma_nl_counter_mask new_mask)
{
 if ((new_mode == RDMA_COUNTER_MODE_AUTO) &&
     ((new_mask & (~ALL_AUTO_MODE_MASKS)) ||
      (curr->mode != RDMA_COUNTER_MODE_NONE)))
  return -EINVAL;

 curr->mode = new_mode;
 curr->mask = new_mask;
 return 0;
}
