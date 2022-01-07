
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct srp_target_port {int queue_size; TYPE_3__* srp_host; scalar_t__ using_rdma_cm; } ;
struct TYPE_5__ {int * cm_id; } ;
struct TYPE_4__ {int * cm_id; } ;
struct srp_rdma_ch {int * tx_ring; int * rx_ring; int * recv_cq; int * send_cq; int * qp; int * target; scalar_t__ fmr_pool; scalar_t__ fr_pool; TYPE_2__ ib_cm; TYPE_1__ rdma_cm; } ;
struct srp_device {scalar_t__ use_fmr; scalar_t__ use_fast_reg; } ;
struct TYPE_6__ {struct srp_device* srp_dev; } ;


 int ib_destroy_cm_id (int *) ;
 int ib_destroy_fmr_pool (scalar_t__) ;
 int ib_free_cq (int *) ;
 int kfree (int *) ;
 int rdma_destroy_id (int *) ;
 int srp_destroy_fr_pool (scalar_t__) ;
 int srp_destroy_qp (struct srp_rdma_ch*) ;
 int srp_free_iu (TYPE_3__*,int ) ;

__attribute__((used)) static void srp_free_ch_ib(struct srp_target_port *target,
      struct srp_rdma_ch *ch)
{
 struct srp_device *dev = target->srp_host->srp_dev;
 int i;

 if (!ch->target)
  return;

 if (target->using_rdma_cm) {
  if (ch->rdma_cm.cm_id) {
   rdma_destroy_id(ch->rdma_cm.cm_id);
   ch->rdma_cm.cm_id = ((void*)0);
  }
 } else {
  if (ch->ib_cm.cm_id) {
   ib_destroy_cm_id(ch->ib_cm.cm_id);
   ch->ib_cm.cm_id = ((void*)0);
  }
 }


 if (!ch->qp)
  return;

 if (dev->use_fast_reg) {
  if (ch->fr_pool)
   srp_destroy_fr_pool(ch->fr_pool);
 } else if (dev->use_fmr) {
  if (ch->fmr_pool)
   ib_destroy_fmr_pool(ch->fmr_pool);
 }

 srp_destroy_qp(ch);
 ib_free_cq(ch->send_cq);
 ib_free_cq(ch->recv_cq);







 ch->target = ((void*)0);

 ch->qp = ((void*)0);
 ch->send_cq = ch->recv_cq = ((void*)0);

 if (ch->rx_ring) {
  for (i = 0; i < target->queue_size; ++i)
   srp_free_iu(target->srp_host, ch->rx_ring[i]);
  kfree(ch->rx_ring);
  ch->rx_ring = ((void*)0);
 }
 if (ch->tx_ring) {
  for (i = 0; i < target->queue_size; ++i)
   srp_free_iu(target->srp_host, ch->tx_ring[i]);
  kfree(ch->tx_ring);
  ch->tx_ring = ((void*)0);
 }
}
