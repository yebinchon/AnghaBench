
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rxe_pkt_info {TYPE_1__* wqe; TYPE_2__* qp; } ;
struct rxe_av {int dummy; } ;
struct TYPE_4__ {struct rxe_av pri_av; } ;
struct TYPE_3__ {struct rxe_av av; } ;


 scalar_t__ IB_QPT_RC ;
 scalar_t__ IB_QPT_UC ;
 scalar_t__ qp_type (TYPE_2__*) ;

struct rxe_av *rxe_get_av(struct rxe_pkt_info *pkt)
{
 if (!pkt || !pkt->qp)
  return ((void*)0);

 if (qp_type(pkt->qp) == IB_QPT_RC || qp_type(pkt->qp) == IB_QPT_UC)
  return &pkt->qp->pri_av;

 return (pkt->wqe) ? &pkt->wqe->av : ((void*)0);
}
