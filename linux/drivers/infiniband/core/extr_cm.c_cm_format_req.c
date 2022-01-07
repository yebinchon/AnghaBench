
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


struct TYPE_11__ {int dlid; int slid; } ;
struct TYPE_19__ {void* interface_id; } ;
struct TYPE_20__ {TYPE_8__ global; } ;
struct TYPE_17__ {void* interface_id; } ;
struct TYPE_18__ {TYPE_6__ global; } ;
struct sa_path_rec {scalar_t__ rec_type; int hop_limit; int packet_life_time; int sl; int traffic_class; int rate; int flow_label; TYPE_10__ opa; TYPE_9__ dgid; TYPE_7__ sgid; int mtu; int pkey; } ;
struct ib_cm_req_param {scalar_t__ qp_type; scalar_t__ private_data_len; scalar_t__ private_data; int srq; int rnr_retry_count; int retry_count; int responder_resources; int max_cm_retries; struct sa_path_rec* primary_path; int local_cm_response_timeout; int starting_psn; int flow_control; int remote_cm_response_timeout; int initiator_depth; int qp_num; int service_id; struct sa_path_rec* alternate_path; } ;
struct cm_req_msg {int primary_hop_limit; int alt_hop_limit; int private_data; int alt_traffic_class; void* alt_remote_lid; void* alt_local_lid; TYPE_9__ alt_remote_gid; TYPE_7__ alt_local_gid; int primary_traffic_class; void* primary_remote_lid; void* primary_local_lid; TYPE_9__ primary_remote_gid; TYPE_7__ primary_local_gid; int pkey; int local_ca_guid; int service_id; int local_comm_id; int hdr; } ;
struct TYPE_16__ {TYPE_4__* port; } ;
struct TYPE_13__ {TYPE_1__* device; int local_id; } ;
struct cm_id_private {TYPE_5__ av; TYPE_2__ id; } ;
struct TYPE_15__ {TYPE_3__* cm_dev; } ;
struct TYPE_14__ {int ack_delay; } ;
struct TYPE_12__ {int node_guid; } ;


 int CM_REQ_ATTR_ID ;
 void* IB_LID_PERMISSIVE ;
 scalar_t__ IB_QPT_XRC_INI ;
 void* OPA_MAKE_ID (int ) ;
 scalar_t__ SA_PATH_REC_TYPE_OPA ;
 int be32_to_cpu (int ) ;
 int cm_ack_timeout (int ,int ) ;
 int cm_form_tid (struct cm_id_private*) ;
 int cm_format_mad_hdr (int *,int ,int ) ;
 int cm_req_set_alt_flow_label (struct cm_req_msg*,int ) ;
 int cm_req_set_alt_local_ack_timeout (struct cm_req_msg*,int ) ;
 int cm_req_set_alt_packet_rate (struct cm_req_msg*,int ) ;
 int cm_req_set_alt_sl (struct cm_req_msg*,int ) ;
 int cm_req_set_alt_subnet_local (struct cm_req_msg*,int) ;
 int cm_req_set_flow_ctrl (struct cm_req_msg*,int ) ;
 int cm_req_set_init_depth (struct cm_req_msg*,int ) ;
 int cm_req_set_local_qpn (struct cm_req_msg*,int ) ;
 int cm_req_set_local_resp_timeout (struct cm_req_msg*,int ) ;
 int cm_req_set_max_cm_retries (struct cm_req_msg*,int ) ;
 int cm_req_set_path_mtu (struct cm_req_msg*,int ) ;
 int cm_req_set_primary_flow_label (struct cm_req_msg*,int ) ;
 int cm_req_set_primary_local_ack_timeout (struct cm_req_msg*,int ) ;
 int cm_req_set_primary_packet_rate (struct cm_req_msg*,int ) ;
 int cm_req_set_primary_sl (struct cm_req_msg*,int ) ;
 int cm_req_set_primary_subnet_local (struct cm_req_msg*,int) ;
 int cm_req_set_qp_type (struct cm_req_msg*,scalar_t__) ;
 int cm_req_set_remote_resp_timeout (struct cm_req_msg*,int ) ;
 int cm_req_set_resp_res (struct cm_req_msg*,int ) ;
 int cm_req_set_retry_count (struct cm_req_msg*,int ) ;
 int cm_req_set_rnr_retry_count (struct cm_req_msg*,int ) ;
 int cm_req_set_srq (struct cm_req_msg*,int ) ;
 int cm_req_set_starting_psn (struct cm_req_msg*,int ) ;
 int cpu_to_be32 (int ) ;
 void* htons (int ) ;
 int memcpy (int ,scalar_t__,scalar_t__) ;
 int ntohl (int ) ;
 int opa_is_extended_lid (int ,int ) ;
 int sa_path_get_dlid (struct sa_path_rec*) ;
 int sa_path_get_slid (struct sa_path_rec*) ;

__attribute__((used)) static void cm_format_req(struct cm_req_msg *req_msg,
     struct cm_id_private *cm_id_priv,
     struct ib_cm_req_param *param)
{
 struct sa_path_rec *pri_path = param->primary_path;
 struct sa_path_rec *alt_path = param->alternate_path;
 bool pri_ext = 0;

 if (pri_path->rec_type == SA_PATH_REC_TYPE_OPA)
  pri_ext = opa_is_extended_lid(pri_path->opa.dlid,
           pri_path->opa.slid);

 cm_format_mad_hdr(&req_msg->hdr, CM_REQ_ATTR_ID,
     cm_form_tid(cm_id_priv));

 req_msg->local_comm_id = cm_id_priv->id.local_id;
 req_msg->service_id = param->service_id;
 req_msg->local_ca_guid = cm_id_priv->id.device->node_guid;
 cm_req_set_local_qpn(req_msg, cpu_to_be32(param->qp_num));
 cm_req_set_init_depth(req_msg, param->initiator_depth);
 cm_req_set_remote_resp_timeout(req_msg,
           param->remote_cm_response_timeout);
 cm_req_set_qp_type(req_msg, param->qp_type);
 cm_req_set_flow_ctrl(req_msg, param->flow_control);
 cm_req_set_starting_psn(req_msg, cpu_to_be32(param->starting_psn));
 cm_req_set_local_resp_timeout(req_msg,
          param->local_cm_response_timeout);
 req_msg->pkey = param->primary_path->pkey;
 cm_req_set_path_mtu(req_msg, param->primary_path->mtu);
 cm_req_set_max_cm_retries(req_msg, param->max_cm_retries);

 if (param->qp_type != IB_QPT_XRC_INI) {
  cm_req_set_resp_res(req_msg, param->responder_resources);
  cm_req_set_retry_count(req_msg, param->retry_count);
  cm_req_set_rnr_retry_count(req_msg, param->rnr_retry_count);
  cm_req_set_srq(req_msg, param->srq);
 }

 req_msg->primary_local_gid = pri_path->sgid;
 req_msg->primary_remote_gid = pri_path->dgid;
 if (pri_ext) {
  req_msg->primary_local_gid.global.interface_id
   = OPA_MAKE_ID(be32_to_cpu(pri_path->opa.slid));
  req_msg->primary_remote_gid.global.interface_id
   = OPA_MAKE_ID(be32_to_cpu(pri_path->opa.dlid));
 }
 if (pri_path->hop_limit <= 1) {
  req_msg->primary_local_lid = pri_ext ? 0 :
   htons(ntohl(sa_path_get_slid(pri_path)));
  req_msg->primary_remote_lid = pri_ext ? 0 :
   htons(ntohl(sa_path_get_dlid(pri_path)));
 } else {

  req_msg->primary_local_lid = IB_LID_PERMISSIVE;
  req_msg->primary_remote_lid = IB_LID_PERMISSIVE;
 }
 cm_req_set_primary_flow_label(req_msg, pri_path->flow_label);
 cm_req_set_primary_packet_rate(req_msg, pri_path->rate);
 req_msg->primary_traffic_class = pri_path->traffic_class;
 req_msg->primary_hop_limit = pri_path->hop_limit;
 cm_req_set_primary_sl(req_msg, pri_path->sl);
 cm_req_set_primary_subnet_local(req_msg, (pri_path->hop_limit <= 1));
 cm_req_set_primary_local_ack_timeout(req_msg,
  cm_ack_timeout(cm_id_priv->av.port->cm_dev->ack_delay,
          pri_path->packet_life_time));

 if (alt_path) {
  bool alt_ext = 0;

  if (alt_path->rec_type == SA_PATH_REC_TYPE_OPA)
   alt_ext = opa_is_extended_lid(alt_path->opa.dlid,
            alt_path->opa.slid);

  req_msg->alt_local_gid = alt_path->sgid;
  req_msg->alt_remote_gid = alt_path->dgid;
  if (alt_ext) {
   req_msg->alt_local_gid.global.interface_id
    = OPA_MAKE_ID(be32_to_cpu(alt_path->opa.slid));
   req_msg->alt_remote_gid.global.interface_id
    = OPA_MAKE_ID(be32_to_cpu(alt_path->opa.dlid));
  }
  if (alt_path->hop_limit <= 1) {
   req_msg->alt_local_lid = alt_ext ? 0 :
    htons(ntohl(sa_path_get_slid(alt_path)));
   req_msg->alt_remote_lid = alt_ext ? 0 :
    htons(ntohl(sa_path_get_dlid(alt_path)));
  } else {
   req_msg->alt_local_lid = IB_LID_PERMISSIVE;
   req_msg->alt_remote_lid = IB_LID_PERMISSIVE;
  }
  cm_req_set_alt_flow_label(req_msg,
       alt_path->flow_label);
  cm_req_set_alt_packet_rate(req_msg, alt_path->rate);
  req_msg->alt_traffic_class = alt_path->traffic_class;
  req_msg->alt_hop_limit = alt_path->hop_limit;
  cm_req_set_alt_sl(req_msg, alt_path->sl);
  cm_req_set_alt_subnet_local(req_msg, (alt_path->hop_limit <= 1));
  cm_req_set_alt_local_ack_timeout(req_msg,
   cm_ack_timeout(cm_id_priv->av.port->cm_dev->ack_delay,
           alt_path->packet_life_time));
 }

 if (param->private_data && param->private_data_len)
  memcpy(req_msg->private_data, param->private_data,
         param->private_data_len);
}
