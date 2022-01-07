
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ resid; } ;
struct rxe_send_wqe {TYPE_1__ dma; } ;
struct rxe_qp {int pd; } ;
struct rxe_pkt_info {int mask; } ;
typedef enum comp_state { ____Placeholder_comp_state } comp_state ;


 int COMPST_COMP_ACK ;
 int COMPST_ERROR ;
 int COMPST_UPDATE_COMP ;
 int IB_ACCESS_LOCAL_WRITE ;
 int RXE_END_MASK ;
 int copy_data (int ,int ,TYPE_1__*,int ,int ,int ,int *) ;
 int payload_addr (struct rxe_pkt_info*) ;
 int payload_size (struct rxe_pkt_info*) ;
 int to_mem_obj ;

__attribute__((used)) static inline enum comp_state do_read(struct rxe_qp *qp,
          struct rxe_pkt_info *pkt,
          struct rxe_send_wqe *wqe)
{
 int ret;

 ret = copy_data(qp->pd, IB_ACCESS_LOCAL_WRITE,
   &wqe->dma, payload_addr(pkt),
   payload_size(pkt), to_mem_obj, ((void*)0));
 if (ret)
  return COMPST_ERROR;

 if (wqe->dma.resid == 0 && (pkt->mask & RXE_END_MASK))
  return COMPST_COMP_ACK;
 else
  return COMPST_UPDATE_COMP;
}
