
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int u64 ;
struct i40iwarp_offload_info {int ord_size; int rd_enable; int rdmap_ver; int ddp_ver; int snd_mark_en; scalar_t__ snd_mark_offset; int pd_id; int ird_size; } ;
struct i40iw_tcp_offload_info {int snd_nxt; int tos; int src_mac_addr_idx; int tcp_state; } ;
struct i40iw_sc_dev {TYPE_9__* iw_priv_qp_ops; } ;
struct i40iw_qp_host_ctx_info {int tcp_info_valid; int iwarp_info_valid; int add_to_qoslist; int user_pri; int rcv_cq_num; int send_cq_num; struct i40iw_tcp_offload_info* tcp_info; } ;
struct TYPE_11__ {scalar_t__ va; } ;
struct i40iw_qp {TYPE_10__ host_ctx; int sc_qp; TYPE_8__* iwpd; TYPE_6__* iwrcq; TYPE_3__* iwscq; struct i40iw_qp_host_ctx_info ctx_info; struct i40iwarp_offload_info iwarp_info; struct i40iw_device* iwdev; } ;
struct i40iw_device {int mac_ip_table_idx; struct i40iw_sc_dev sc_dev; } ;
struct i40iw_cm_node {int ord_size; int tos; int state; scalar_t__ lsmm_size; scalar_t__ snd_mark_en; int user_pri; int ird_size; } ;
struct TYPE_20__ {int (* qp_setctx ) (int *,int *,struct i40iw_qp_host_ctx_info*) ;} ;
struct TYPE_18__ {int pd_id; } ;
struct TYPE_19__ {TYPE_7__ sc_pd; } ;
struct TYPE_15__ {int cq_id; } ;
struct TYPE_16__ {TYPE_4__ cq_uk; } ;
struct TYPE_17__ {TYPE_5__ sc_cq; } ;
struct TYPE_12__ {int cq_id; } ;
struct TYPE_13__ {TYPE_1__ cq_uk; } ;
struct TYPE_14__ {TYPE_2__ sc_cq; } ;


 int I40IW_CM_STATE_OFFLOADED ;
 int I40IW_TCP_STATE_ESTABLISHED ;
 int SNDMARKER_SEQNMASK ;
 int i40iw_derive_hw_ird_setting (int ) ;
 int i40iw_init_tcp_ctx (struct i40iw_cm_node*,struct i40iw_tcp_offload_info*,struct i40iw_qp*) ;
 int memset (struct i40iw_tcp_offload_info*,int,int) ;
 int stub1 (int *,int *,struct i40iw_qp_host_ctx_info*) ;

__attribute__((used)) static void i40iw_cm_init_tsa_conn(struct i40iw_qp *iwqp,
       struct i40iw_cm_node *cm_node)
{
 struct i40iw_tcp_offload_info tcp_info;
 struct i40iwarp_offload_info *iwarp_info;
 struct i40iw_qp_host_ctx_info *ctx_info;
 struct i40iw_device *iwdev = iwqp->iwdev;
 struct i40iw_sc_dev *dev = &iwqp->iwdev->sc_dev;

 memset(&tcp_info, 0x00, sizeof(struct i40iw_tcp_offload_info));
 iwarp_info = &iwqp->iwarp_info;
 ctx_info = &iwqp->ctx_info;

 ctx_info->tcp_info = &tcp_info;
 ctx_info->send_cq_num = iwqp->iwscq->sc_cq.cq_uk.cq_id;
 ctx_info->rcv_cq_num = iwqp->iwrcq->sc_cq.cq_uk.cq_id;

 iwarp_info->ord_size = cm_node->ord_size;
 iwarp_info->ird_size = i40iw_derive_hw_ird_setting(cm_node->ird_size);

 if (iwarp_info->ord_size == 1)
  iwarp_info->ord_size = 2;

 iwarp_info->rd_enable = 1;
 iwarp_info->rdmap_ver = 1;
 iwarp_info->ddp_ver = 1;

 iwarp_info->pd_id = iwqp->iwpd->sc_pd.pd_id;

 ctx_info->tcp_info_valid = 1;
 ctx_info->iwarp_info_valid = 1;
 ctx_info->add_to_qoslist = 1;
 ctx_info->user_pri = cm_node->user_pri;

 i40iw_init_tcp_ctx(cm_node, &tcp_info, iwqp);
 if (cm_node->snd_mark_en) {
  iwarp_info->snd_mark_en = 1;
  iwarp_info->snd_mark_offset = (tcp_info.snd_nxt &
    SNDMARKER_SEQNMASK) + cm_node->lsmm_size;
 }

 cm_node->state = I40IW_CM_STATE_OFFLOADED;
 tcp_info.tcp_state = I40IW_TCP_STATE_ESTABLISHED;
 tcp_info.src_mac_addr_idx = iwdev->mac_ip_table_idx;
 tcp_info.tos = cm_node->tos;

 dev->iw_priv_qp_ops->qp_setctx(&iwqp->sc_qp, (u64 *)(iwqp->host_ctx.va), ctx_info);


 ctx_info->tcp_info_valid = 0;
 ctx_info->iwarp_info_valid = 0;
 ctx_info->add_to_qoslist = 0;
}
