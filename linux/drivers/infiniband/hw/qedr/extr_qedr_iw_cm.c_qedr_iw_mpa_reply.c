
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedr_iw_ep {struct qedr_dev* dev; } ;
struct qedr_dev {int rdma_ctx; TYPE_1__* ops; } ;
struct qed_iwarp_send_rtr_in {int ep_context; } ;
struct qed_iwarp_cm_event_params {int ep_context; } ;
struct TYPE_2__ {int (* iwarp_send_rtr ) (int ,struct qed_iwarp_send_rtr_in*) ;} ;


 int stub1 (int ,struct qed_iwarp_send_rtr_in*) ;

__attribute__((used)) static int
qedr_iw_mpa_reply(void *context, struct qed_iwarp_cm_event_params *params)
{
 struct qedr_iw_ep *ep = (struct qedr_iw_ep *)context;
 struct qedr_dev *dev = ep->dev;
 struct qed_iwarp_send_rtr_in rtr_in;

 rtr_in.ep_context = params->ep_context;

 return dev->ops->iwarp_send_rtr(dev->rdma_ctx, &rtr_in);
}
