
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rxe_send_wqe {int dma; } ;
struct rxe_qp {int pd; } ;
struct rxe_pkt_info {int dummy; } ;
typedef enum comp_state { ____Placeholder_comp_state } comp_state ;


 int COMPST_COMP_ACK ;
 int COMPST_ERROR ;
 int IB_ACCESS_LOCAL_WRITE ;
 int atmack_orig (struct rxe_pkt_info*) ;
 int copy_data (int ,int ,int *,int *,int,int ,int *) ;
 int to_mem_obj ;

__attribute__((used)) static inline enum comp_state do_atomic(struct rxe_qp *qp,
     struct rxe_pkt_info *pkt,
     struct rxe_send_wqe *wqe)
{
 int ret;

 u64 atomic_orig = atmack_orig(pkt);

 ret = copy_data(qp->pd, IB_ACCESS_LOCAL_WRITE,
   &wqe->dma, &atomic_orig,
   sizeof(u64), to_mem_obj, ((void*)0));
 if (ret)
  return COMPST_ERROR;
 else
  return COMPST_COMP_ACK;
}
