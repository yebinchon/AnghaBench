
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct hfi1_user_sdma_pkt_q {int subctxt; int ctxt; int dd; } ;
struct hfi1_user_sdma_comp_q {TYPE_1__* comps; } ;
typedef enum hfi1_sdma_comp_state { ____Placeholder_hfi1_sdma_comp_state } hfi1_sdma_comp_state ;
struct TYPE_2__ {int errcode; int status; } ;


 int ERROR ;
 int smp_wmb () ;
 int trace_hfi1_sdma_user_completion (int ,int ,int ,size_t,int,int) ;

__attribute__((used)) static inline void set_comp_state(struct hfi1_user_sdma_pkt_q *pq,
      struct hfi1_user_sdma_comp_q *cq,
      u16 idx, enum hfi1_sdma_comp_state state,
      int ret)
{
 if (state == ERROR)
  cq->comps[idx].errcode = -ret;
 smp_wmb();
 cq->comps[idx].status = state;
 trace_hfi1_sdma_user_completion(pq->dd, pq->ctxt, pq->subctxt,
     idx, state, ret);
}
