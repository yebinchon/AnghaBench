
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qedr_iw_ep {int * qp; int qed_context; struct qedr_dev* dev; } ;
struct qedr_dev {int rdma_ctx; TYPE_1__* ops; } ;
struct qed_iwarp_reject_in {int private_data_len; void const* private_data; struct qedr_iw_ep* cb_context; int ep_context; } ;
struct iw_cm_id {scalar_t__ provider_data; } ;
struct TYPE_2__ {int (* iwarp_reject ) (int ,struct qed_iwarp_reject_in*) ;} ;


 int stub1 (int ,struct qed_iwarp_reject_in*) ;

int qedr_iw_reject(struct iw_cm_id *cm_id, const void *pdata, u8 pdata_len)
{
 struct qedr_iw_ep *ep = (struct qedr_iw_ep *)cm_id->provider_data;
 struct qedr_dev *dev = ep->dev;
 struct qed_iwarp_reject_in params;

 params.ep_context = ep->qed_context;
 params.cb_context = ep;
 params.private_data = pdata;
 params.private_data_len = pdata_len;
 ep->qp = ((void*)0);

 return dev->ops->iwarp_reject(dev->rdma_ctx, &params);
}
