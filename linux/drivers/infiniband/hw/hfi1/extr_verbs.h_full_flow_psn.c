
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tid_rdma_flow {int flow_state; } ;


 int __full_flow_psn (int *,int ) ;

__attribute__((used)) static inline u32 full_flow_psn(struct tid_rdma_flow *flow, u32 psn)
{
 return __full_flow_psn(&flow->flow_state, psn);
}
