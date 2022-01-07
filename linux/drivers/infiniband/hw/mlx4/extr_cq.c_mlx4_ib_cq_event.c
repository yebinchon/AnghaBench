
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_cq {int cqn; } ;
struct TYPE_3__ {struct ib_cq* cq; } ;
struct ib_event {TYPE_1__ element; int event; int device; } ;
struct ib_cq {int cq_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
typedef enum mlx4_event { ____Placeholder_mlx4_event } mlx4_event ;
struct TYPE_4__ {struct ib_cq ibcq; } ;


 int IB_EVENT_CQ_ERR ;
 int MLX4_EVENT_TYPE_CQ_ERROR ;
 int pr_warn (char*,int,int ) ;
 int stub1 (struct ib_event*,int ) ;
 TYPE_2__* to_mibcq (struct mlx4_cq*) ;

__attribute__((used)) static void mlx4_ib_cq_event(struct mlx4_cq *cq, enum mlx4_event type)
{
 struct ib_event event;
 struct ib_cq *ibcq;

 if (type != MLX4_EVENT_TYPE_CQ_ERROR) {
  pr_warn("Unexpected event type %d "
         "on CQ %06x\n", type, cq->cqn);
  return;
 }

 ibcq = &to_mibcq(cq)->ibcq;
 if (ibcq->event_handler) {
  event.device = ibcq->device;
  event.event = IB_EVENT_CQ_ERR;
  event.element.cq = ibcq;
  ibcq->event_handler(&event, ibcq->cq_context);
 }
}
