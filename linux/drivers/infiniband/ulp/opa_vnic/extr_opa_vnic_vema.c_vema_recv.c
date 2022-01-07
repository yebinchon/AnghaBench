
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct opa_vnic_vema_port {int lock; } ;
struct TYPE_10__ {scalar_t__ status; int method; } ;
struct opa_vnic_vema_mad {TYPE_4__ mad_hdr; } ;
struct ib_mad_send_buf {struct opa_vnic_vema_mad* mad; struct ib_mad_send_buf* ah; } ;
struct TYPE_9__ {TYPE_5__* mad; int grh; } ;
struct ib_mad_recv_wc {TYPE_3__ recv_buf; TYPE_6__* wc; } ;
struct ib_mad_agent {int port_num; TYPE_1__* qp; struct opa_vnic_vema_port* context; } ;
struct ib_ah {struct opa_vnic_vema_mad* mad; struct ib_ah* ah; } ;
struct TYPE_12__ {int pkey_index; int src_qp; } ;
struct TYPE_8__ {int method; } ;
struct TYPE_11__ {TYPE_2__ mad_hdr; } ;
struct TYPE_7__ {int pd; } ;


 int GFP_KERNEL ;

 int IB_MGMT_METHOD_GET_RESP ;

 int IB_MGMT_VENDOR_HDR ;
 scalar_t__ IS_ERR (struct ib_mad_send_buf*) ;
 int OPA_MGMT_BASE_VERSION ;
 int OPA_VNIC_EMA_DATA ;
 scalar_t__ OPA_VNIC_UNSUP_ATTR ;
 int RDMA_DESTROY_AH_SLEEPABLE ;
 struct ib_mad_send_buf* ib_create_ah_from_wc (int ,TYPE_6__*,int ,int ) ;
 struct ib_mad_send_buf* ib_create_send_mad (struct ib_mad_agent*,int ,int ,int ,int ,int ,int ,int ) ;
 int ib_free_recv_mad (struct ib_mad_recv_wc*) ;
 int ib_free_send_mad (struct ib_mad_send_buf*) ;
 int ib_post_send_mad (struct ib_mad_send_buf*,int *) ;
 int memcpy (struct opa_vnic_vema_mad*,TYPE_5__*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rdma_destroy_ah (struct ib_mad_send_buf*,int ) ;
 int vema_get (struct opa_vnic_vema_port*,struct opa_vnic_vema_mad*,struct opa_vnic_vema_mad*) ;
 int vema_set (struct opa_vnic_vema_port*,struct opa_vnic_vema_mad*,struct opa_vnic_vema_mad*) ;

__attribute__((used)) static void vema_recv(struct ib_mad_agent *mad_agent,
        struct ib_mad_send_buf *send_buf,
        struct ib_mad_recv_wc *mad_wc)
{
 struct opa_vnic_vema_port *port;
 struct ib_ah *ah;
 struct ib_mad_send_buf *rsp;
 struct opa_vnic_vema_mad *vema_mad;

 if (!mad_wc || !mad_wc->recv_buf.mad)
  return;

 port = mad_agent->context;
 ah = ib_create_ah_from_wc(mad_agent->qp->pd, mad_wc->wc,
      mad_wc->recv_buf.grh, mad_agent->port_num);
 if (IS_ERR(ah))
  goto free_recv_mad;

 rsp = ib_create_send_mad(mad_agent, mad_wc->wc->src_qp,
     mad_wc->wc->pkey_index, 0,
     IB_MGMT_VENDOR_HDR, OPA_VNIC_EMA_DATA,
     GFP_KERNEL, OPA_MGMT_BASE_VERSION);
 if (IS_ERR(rsp))
  goto err_rsp;

 rsp->ah = ah;
 vema_mad = rsp->mad;
 memcpy(vema_mad, mad_wc->recv_buf.mad, IB_MGMT_VENDOR_HDR);
 vema_mad->mad_hdr.method = IB_MGMT_METHOD_GET_RESP;
 vema_mad->mad_hdr.status = 0;


 mutex_lock(&port->lock);

 switch (mad_wc->recv_buf.mad->mad_hdr.method) {
 case 129:
  vema_get(port, (struct opa_vnic_vema_mad *)mad_wc->recv_buf.mad,
    vema_mad);
  break;
 case 128:
  vema_set(port, (struct opa_vnic_vema_mad *)mad_wc->recv_buf.mad,
    vema_mad);
  break;
 default:
  vema_mad->mad_hdr.status = OPA_VNIC_UNSUP_ATTR;
  break;
 }
 mutex_unlock(&port->lock);

 if (!ib_post_send_mad(rsp, ((void*)0))) {




  goto free_recv_mad;
 }

 ib_free_send_mad(rsp);

err_rsp:
 rdma_destroy_ah(ah, RDMA_DESTROY_AH_SLEEPABLE);
free_recv_mad:
 ib_free_recv_mad(mad_wc);
}
